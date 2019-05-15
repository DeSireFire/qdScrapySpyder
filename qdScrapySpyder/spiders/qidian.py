# -*- coding: utf-8 -*-
import scrapy,re,os.path,json,difflib,datetime,time
# import chardet,random,datetime,

class QidianSpider(scrapy.Spider):
    name = "qidian"
    allowed_domains = ["qidian.com","560xs.com","biquge.com.cn","biqusoso.com","biquge5200.cc","xbiquge6.com","zwdu.com"]
    start_urls = ['https://www.qidian.com/all']
    # start_urls = ['https://www.qidian.com/all?page=%s'%str(page) for page in range(0, 5000)]

    custom_settings = {
        # 'COOKIES_ENABLED':False,
        'updateBool': False,  # 是否只爬取最新的章节,如果只爬取最新章节，未True
    }

    '''
    正则大军
    '''
    # 起点小说正则
    book_url = '<h4><a href="([\s\S]*?)" target="_blank" data-eid="([\s\S]*?)" data-bid="([\s\S]*?)">([\s\S]*?)</a></h4>\r'
    book_name_writer = '<title>《([\s\S]*?)》_([\s\S]*?)著_([\s\S]*?)_起点中文网</title>'
    book_writer_intro = '<pclass="(extend)?">([\s\S]*?)<citeclass="iconfontbluej_infoUnfold"title="展开介绍">\ue623</cite></p></div><divclass="info-wrap"data-l1="9">'
    book_writer_works = '<spanclass="book"></span><p>作品总数</p><em>([\s\S]*?)</em></li><li><spanclass="word">'
    book_writer_wordCount = '<li><spanclass="word"></span><p>累计字数</p><em>([\s\S]*?)</em></li><li><spanclass="coffee">'
    book_writer_workDays = '<p>创作天数</p><em>([\s\S]*?)</em></li></ul></div>'
    book_some = '<span class="NVxQXyDi">([\s\S]*?)</span></em><cite>'
    book_action = ' <p class="tag"><span class="blue">([\s\S]*?)</span>'
    book_intro = '<p class="intro">([\s\S]*?)</p>'
    book_introMore = '<div class="book-intro">\r                        <p>\r                            \r                                ([\s\S]*?)\r                            \r                        </p>\r                    </div>'
    book_title = r'class="iconfont">&#xe636;</b>分卷阅读</em></a>([\s\S]*?)<i>'
    book_cha = '<a class="red-btn J-getJumpUrl " href="([\s\S]*?)" id="readBtn" data-eid="qd_G03" data-bid="([\s\S]*?)" data-firstchapterjumpurl="([\s\S]*?)">'

    book_img_X = "//body//div//div[@class='book-img']/a[@id='bookImg']/img/@src"
    book_category_X = "//body//div/div//p[@class='tag']/a[@class='red']"
    set_cookie = ''

    def start_requests(self):
        urls = ['https://www.qidian.com/all?page=%s'%str(page) for page in range(1, 5000)]
        for page in urls:
            print("开始获取第%s页的小说"%page)
            yield scrapy.Request(url=page,callback=self.parse)

    def parse(self, response):
        urls = response.xpath("/html/body/div[@class='wrap']/div[@class='all-pro-wrap box-center cf']/div[@class='main-content-wrap fl']/div[@class='all-book-list']/div[@class='book-img-text']/ul[@class='all-img-list cf']/li/div[@class='book-img-box']/a/@href").extract()
        if urls:
            for i in urls:
                if response.headers.getlist("Set-Cookie"):
                    self.set_cookie = str(response.headers.getlist("Set-Cookie")[0], encoding="utf-8").split(';')[0]
                yield scrapy.Request(url='https:%s'%i, callback=self.parse_novel_info)
        else:
            print('%s 请求速度过快，未获取到数据，重试！'%response.url)
            yield scrapy.Request(url=response.url, callback=self.parse, dont_filter=True, meta={'dont_retry':True})

    def parse_novel_info(self, response):
        BI_resdict = {
            '书md5':self.code_md5(response.url),
            '书id':response.url[29:],
            '书封面':self.imgToBase64('https:%s'%response.xpath(self.book_img_X).extract()[0].strip()),
            '书封面URL':'https:%s'%response.xpath(self.book_img_X).extract()[0].strip(),
            '书名':self.reglux(response.text, self.book_name_writer, False)[0][0],
            '评分':self.scoreGet(response.url[29:]),
            '总字数':0,
            '总点击数':'',
            '阅文总点击':'',
            '会员周点击':'',
            '总推荐':'',
            '周推荐':'',
            '作者信息':{
                '姓名':self.reglux(response.text, self.book_name_writer, False)[0][1],
                '作者简介':self.reglux(response.text, self.book_writer_intro, True)[0][1],
                '作品总数':self.reglux(response.text, self.book_writer_works, True)[0],
                '累计字数':self.reglux(response.text, self.book_writer_wordCount, True)[0],
                '创作天数':self.reglux(response.text, self.book_writer_workDays, True)[0],
            },
            '连载状态':self.reglux(response.text, self.book_action, False)[0],
            '分类':self.reglux(response.text, self.book_name_writer, False)[0][2],
            '子分类':response.xpath(self.book_category_X).extract()[-1],
            '标签':','.join(response.xpath(self.book_category_X).extract()),
            '简介':self.reglux(response.text, self.book_intro, False)[0],
            '介绍':self.reglux(response.text, self.book_introMore, False)[0].replace('\u3000\u3000',''),
            '书源URL':response.url,
            '笔趣阁URL':'',
            '小说目录':{},
            '小说章节数':0,
            '上传时间':'',
            '最新章节':'',
            '最新章节更新时间':'',
        }
        index_url = 'https://book.qidian.com/ajax/book/category?{csrfToken}&bookId={bookeId}'.format(csrfToken = self.set_cookie,bookeId = BI_resdict['书id'])
        yield scrapy.Request(url=index_url, callback=self.ajax_index, meta={"item": BI_resdict})

    def ajax_index(self,response):
        datas = json.loads(response.text)
        tempdict = response.meta['item']
        # 获取速度过快，导致失败
        if 'data' not in datas:
            print(response.url)
            print(datas)
            # 更新csrf
            n_url = 'https://book.qidian.com/ajax/book/category?{csrfToken}&bookId={bookeId}'.format(csrfToken = self.set_cookie,bookeId = response.url.split('bookId=')[-1])
            yield scrapy.Request(url=n_url, callback=self.ajax_index, meta={"item": tempdict,'dont_retry':True,}, dont_filter=True)
        else:
            indexList = []
            for i in list(datas['data']['vs']):
                for n in i['cs']:   # {'uuid': 73, 'cN': '第七十章 期待', 'uT': '2016-12-05 15:08:26', 'cnt': 2826, 'cU': '_AaqI-dPJJ4uTkiRw_sFYA2/35xIQH46UOnwrjbX3WA1AA2', 'id': 343467910, 'sS': 1}
                    n['所属卷名'] = i['vN']
                    tempdict['总字数'] += n['cnt'] # 字数统计
                    indexList.append(self.chaster_handler(n))

            # 连载状态
            if '连载' in tempdict['连载状态']:
                tempdict['连载状态'] = 0
            else:
                tempdict['连载状态'] = 1

            # 起点小说目录详情
            tempdict['小说目录'] = indexList
            tempdict['小说章节数'] = len(indexList)
            tempdict['上传时间'] = tempdict['小说目录'][0]['更新时间']

            # 起点小说的最新章节
            tempdict['最新章节'] = tempdict['小说目录'][-1]['章节名']
            tempdict['最新章节更新时间'] = tempdict['小说目录'][-1]['更新时间']


            '''
            正文采集，可以根据需求进行拓展
            '''
            # 笔趣阁1
            url1 = 'https://www.biquge.com.cn/search.php?keyword=%s' % (tempdict['书名'])
            print(url1)
            request1 = scrapy.Request(url1, callback=self.content_handler_1, meta={"item": tempdict})

            # 若发现网站中不存小说或没有最新的小说章节则跳到下一个网站爬取，meta['requests']列表决定网站的顺序
            # 执行第一个request时，变量名必须一致。例如：想第一个执行request1 则 "request1.meta['requests']" 必须与 "return request1" ，“request1”其中一致。
            request1.meta['requests'] = [
                # request2,
                # request3,
            ]
            yield request1

    def content_handler_1(self, response):
        '''
        正文通天塔第一层
        # 定位起点小说最新章节信息，例如：{'章节名': '第1399章 石罐共鸣', '更新时间': '2019-04-27 01:56:07', '字数': 3594}
        # print(response.meta['item']['小说目录'][list(response.meta['item']['小说目录'].keys())[-1]][-1]['章节名'])
        '''
        # 其他小说网站正则（用于获取小说具体地址（含所有章节表的网页地址）例如：https://www.biquge.com.cn/book/23488/）

        # 没有最新章节，去球吧
        if response.meta['item']['最新章节'] not in response.text:
            print('未查找到 %s 或未发现该书有最新章节 %s ，URL: %s 执行下一层' % (
            response.meta['item']['书名'], response.meta['item']['最新章节'], response.url))
            if response.meta['requests']:
                newRequest = response.meta['requests'].pop(0)
                newRequest.meta['requests'] = response.meta['requests']
                yield newRequest
            else:
                # 请求列表中已经无请求,pass
                pass
        else:
            names = response.xpath("/html/body/div[@class='result-list']/div[@class='result-item result-game-item']/div[@class='result-game-item-detail']/h3[@class='result-item-title result-game-item-title']/a[@class='result-game-item-title-link']/span/text()").extract()
            urls = response.xpath("/html/body/div[@class='result-list']/div[@class='result-item result-game-item']/div[@class='result-game-item-detail']/h3[@class='result-item-title result-game-item-title']/a[@class='result-game-item-title-link']/@href").extract()
            response.meta['item']['笔趣阁URL'] = urls[names.index(response.meta['item']['书名'])]
            meta = {
                "item": response.meta['item'],
                'requests': response.meta['requests'],
                'xpath': [("/html/body/div[@id='wrapper']/div[@class='box_con'][2]/div[@id='list']/dl/dd/a/", 0, None,),    # 该网站的小说目录列表xpath，列表的第几个元素开始小说第一章节，列表的第几个元素最后一个章节（一般为None）
                          ("/html/body/div[@id='wrapper']/div[@class='content_read']/div[@class='box_con']/div[@id='content']", 0, None)],  # 该网站的小说正文内容列表xpath，同上（一般列表的第0个元素就是正文了，预留），同上（预留）
                'url_home': r'https://www.biquge.com.cn',   # 用于拼接小说正文的URL，某些网站用的不完整url，例如：/book/29931/15997848.html，需要拼接https://www.zwdu.com 组成：https://www.zwdu.com/book/29931/15997848.html
                'updateBool':self.custom_settings['updateBool'],# 是否只爬取最新的章节
            }
            yield scrapy.Request(url=urls[names.index(response.meta['item']['书名'])], callback=self.content_handler, meta=meta)

    def content_handler(self,response):
        '''
        章节目录整理函数
        :param [i['章节名'] for i in response.meta['item']['小说目录']]:起点目录列表
        :param list(set(nameList).difference(set(tempList))):在笔趣阁目录，但不在起点目录的集合
        :param list(set([i['章节名'] for i in response.meta['item']['小说目录']]).difference(set(tempList))):在起点目录，但不在笔趣阁目录的集合
        :return:
        '''
        # 第三方小说站的小说目录里的URL列表和章节的名字列表
        urlList = response.xpath(response.meta['xpath'][0][0]+'@href').extract()[response.meta['xpath'][0][1]:response.meta['xpath'][0][2]]
        nameList = response.xpath(response.meta['xpath'][0][0]+'text()').extract()[response.meta['xpath'][0][1]:response.meta['xpath'][0][2]]

        # 小说基础信息表管道
        from qdScrapySpyder.items import qidian_index
        item = qidian_index()
        item['code'] = response.meta['item']['书md5']  # 书md5
        item['name'] = response.meta['item']['书名']  # 书名
        item['category'] = response.meta['item']['分类']  # 分类
        item['sub_category'] = response.meta['item']['子分类']  # 子分类
        item['author'] = response.meta['item']['作者信息']['姓名']  # 作者信息
        item['intro'] = response.meta['item']['简介']  # 简介
        item['info'] = response.meta['item']['介绍']  # 介绍
        item['score'] = response.meta['item']['评分']  # 评分
        item['cover_url'] = response.meta['item']['书封面URL']  # 书封面URL
        item['uptime'] = response.meta['item']['上传时间']  # 上传时间
        item['count_chapter'] = response.meta['item']['小说章节数']  # 小说章节数
        item['tags'] = response.meta['item']['标签']  # 标签
        item['new_chapter'] = response.meta['item']['最新章节']  # 最新章节
        item['new_uptime'] = response.meta['item']['最新章节更新时间']  # 最新章节更新时间
        item['size_num'] = response.meta['item']['总字数']  # 总字数
        item['click_num'] = response.meta['item']['总点击数']  # 总点击数
        item['week_click_num'] = response.meta['item']['会员周点击']  # 会员周点击
        item['recommend_num'] = response.meta['item']['总推荐']  # 总推荐
        item['week_recommend_num'] = response.meta['item']['周推荐']  # 周推荐
        item['status'] = response.meta['item']['连载状态']  # 连载状态
        item['chapter_status'] = response.meta['item']['书源URL']  # 书源URL todo
        item['qidian_url'] = response.meta['item']['书源URL']  # 书源URL
        item['relation_biquge'] = response.meta['item']['笔趣阁URL']  # 笔趣阁URL
        # yield item

        # 图片信息表管道
        from qdScrapySpyder.items import qidian_cover
        item = qidian_cover()
        item['code'] = response.meta['item']['书md5']  # code编码
        item['type'] = 'jpg' # 数据类型
        item['img'] = response.meta['item']['书封面']  # 图片base64
        # yield item

        if len(nameList) != len(response.meta['item']['小说目录']):
                if response.meta['updateBool']:# 是否只爬取最新的章节
                    info = {
                        '文章顺序': len(nameList),
                        '所属小说名': response.meta['item']['书名'],
                        '所属卷名': '正文卷',
                        '章节名': nameList[-1],
                        '更新时间': datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
                        '字数': 0,
                    }
                    yield scrapy.Request(url=response.meta['url_home'] + urlList[-1], callback=self.content_downLoader,meta={"item": info, 'xpath': response.meta['xpath'][1]})
                else:
                    for name, url in zip(nameList, urlList):
                        info = {
                            '文章顺序': nameList.index(name) + 1,
                            '所属小说名': response.meta['item']['书名'],
                            '所属卷名': '正文卷',
                            '章节名': name,
                            '更新时间': datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
                            '字数': 0,
                            '正文':'',
                        }
                        yield scrapy.Request(url=response.meta['url_home'] + url, callback=self.content_downLoader,meta={"item": info, 'xpath': response.meta['xpath'][1]})
        else:
            for url, info in zip(urlList, response.meta['item']['小说目录']):
                info = {
                    '文章顺序': urlList.index(url) + 1,
                    '所属小说名': response.meta['item']['书名'],
                    '所属卷名': '正文卷',
                    '章节名': info['章节名'],
                    '更新时间': datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
                    '字数': 0,
                    '正文': '',
                }
                yield scrapy.Request(url=response.meta['url_home'] + url, callback=self.content_downLoader,meta={"item": info, 'xpath': response.meta['xpath'][1]})




    def content_downLoader(self,response):
        '''
        正文采集函数
        '''
        response.meta['item']['正文'] = self.clearHtml(response.xpath(response.meta['xpath'][0]).extract()[0])
        # response.meta['item']['正文'] = self.clearHtml(response.xpath(response.meta['xpath'][0]).extract()[response.meta['xpath'][1]:response.meta['xpath'][2]])
        response.meta['item']['字数'] = len(self.clearHtml(response.xpath(response.meta['xpath'][0]).extract()[0]))

        # 小说正文内容管道
        from qdScrapySpyder.items import content_0
        # item = QidianChapterItem()
        # item['cOrder'] = response.meta['item']['文章顺序']  # '文章顺序'
        # item['cBook'] = response.meta['item']['所属小说名']  # '所属卷名'
        # item['cTitle'] = response.meta['item']['所属卷名']  # '所属卷名'
        # item['cName'] = response.meta['item']['章节名']  # '章节名'
        # item['fullName'] = '%s-%s-%s'%(response.meta['item']['所属小说名'],response.meta['item']['所属卷名'],response.meta['item']['章节名'])  # '章节全名，建议建立 唯一索引 例如：放开那个女巫_正文卷_第一千四百六十八章 燃点'
        # item['cUT'] = response.meta['item']['更新时间']  # '更新时间'
        # item['cKeys'] = response.meta['item']['字数']  # '字数'
        # item['cContent'] = response.meta['item']['正文']  # '字数'
        # item['isD'] = 0  # 是否属于删除状态
        # yield item

    # 工具函数
    @classmethod
    def proxy_list(self, url, testURL='https://www.qidian.com/all'):
        """
        获取并检测代理池返回的IP
        :param url: 获取IP的代理池地址
        :param testURL: 检测网址
        :return: 一个能用的ip组成的proxies字典
        """
        import requests
        count = 0  # 获取的IP数
        try:
            while count != 0:
                proxy = requests.get(url)
                for i in range(0, 4):
                    proxies = {
                        'http': 'http://%s' % (proxy),
                        'https': 'https://%s' % (proxy)
                    }
                    r = requests.get(testURL, proxies=proxies)
                    if (not r.ok) or len(r.content) < 500:
                        r = requests.get("http://45.77.254.61:5010/delete?proxy=%s" %proxy)
                    else:
                        return proxies

        except Exception as e:
            # print(e)
            return None

    @classmethod
    def scoreGet(self,tempStr):
        '''
        小说评分ajax
        :param tempStr: 字符串，小说的起点ID
        :return: base64码
        '''
        import requests
        from qdScrapySpyder.settings import PROXY_URL
        myheader = {
            'Referer': 'https://book.qidian.com/info/%s'%tempStr,
            'Host': 'book.qidian.com',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',
        }
        # for line in self.csrfGet():  # 按照字符：进行划分读取
        #     # 其设置为1就会把字符串拆分成2份
        #     name, value = line.strip().split('=', 1)
        #     cookies[name] = value  # 为字典cookies添加内容
        scoreUrl = "https://book.qidian.com/ajax/comment/index?{_csrfToken}&bookId={bookId}&pageSize=15".format(_csrfToken=self.csrfGet()[0],bookId=tempStr)
        req = requests.get(url=scoreUrl, headers=myheader, proxies=self.proxy_list(PROXY_URL))
        return req.json()['data']['rate']

    @classmethod
    def csrfGet(self):
        '''
        获取起点的csrf,并测试代理池IP有效性
        :return:字符串。“_csrfToken=ojyuGPBlNRfhXZs0Mhdou7mom079Ya0mFamF6ak8; expires=Tue, 12-May-2020 16:37:49 GMT; path=/; domain=.qidian.com, newstatisticUUID=1557765469_2081508423; expires=Wed, 12-May-2021 16:37:49 GMT; path=/; domain=.qidian.com”
        '''
        import requests
        from qdScrapySpyder.settings import PROXY_URL
        headers = {
            'Host':'www.qidian.com',
            'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36'
        }
        req = requests.get(url='https://www.qidian.com/all',headers=headers, proxies=self.proxy_list(PROXY_URL))
        return req.headers['set-cookie'].split(';')

    @classmethod
    def imgToBase64(self,imgId):
        '''
        小说封面图获取并转base64
        :param imgId: 字符串，小说在起点的id编号
        :return: base64码
        '''
        import requests, base64
        myheader = {
            'Host': 'bookcover.yuewen.com',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',
        }
        # print("封面地址：https://bookcover.yuewen.com/qdbimg/349573/%s/180"%imgId)
        req = requests.get(url=imgId, headers=myheader)
        base64_data = base64.b64encode(req.content)
        return 'data:image/jpg;base64,' + bytes.decode(base64_data)

    def code_md5(self,tempStr):
        '''
        生成uuid1
        :return: 基于MAC地址、当前时间戳、随机数生成。
        '''
        import hashlib
        return hashlib.md5(tempStr).hexdigest()

    def CtoE(self,tempStr):
        '''
        中文符号转英文符号
        :param tempStr: 字符串
        :return:
        '''
        table = {ord(f): ord(t) for f, t in zip(
            u'，。！？【】（）％＃＠＆１２３４５６７８９０',
            u',.!?[]()%#@&1234567890')}
        return tempStr.translate(table)

    def string_similar(self,s1, s2):
        '''
        字符串相似度
        :param s1:字符串,用于比较的字符串
        :param s2:字符串,被比较的字符串
        :return:
        '''
        return difflib.SequenceMatcher(None, s1, s2).quick_ratio()

    def clearHtml(self,tempStr):
        '''
        清除html标签,
        :param tempStr: 字符串,需要清洗html的字符串
        :return:
        '''
        # todo ㈧㈠Δ』中文网Ｗｗ％Ｗ．ん８⒈Ｚｗ．ＣＯＭ沙雕字符清洗
        return re.sub(r'</?\w+[^>]*>', '', tempStr)

    def chaster_handler(self,temp):
        '''
        章节信息整理
        :param temp:字典，整理例如：{'uuid': 4, 'cN': '第一章 他叫白小纯', 'uT': '2016-04-28 11:32:50', 'cnt': 3059, 'cU': 'rJgN8tJ_cVdRGoWu-UQg7Q2/6jr-buLIUJSaGfXRMrUjdw2', 'id': 306873415, 'sS': 1}的信息
        :return:
        '''
        return {
            '所属卷名':temp['所属卷名'],
            '章节名':temp['cN'],
            '更新时间':temp['uT'],
            '字数':temp['cnt'],
        }

    def reglux(self, html_text, re_pattern, nbsp_del=True):
        '''
        正则过滤函数
        :param html_text: 字符串，网页的文本
        :param re_pattern: 字符串，正则表达式
        :param nbsp_del: 布尔值，控制是否以去除换行符的形式抓取有用信息
        :return:
        '''
        # re_pattern = re_pattern.replace('~[',"\~\[").replace(']~','\]\~')
        pattern = re.compile(re_pattern)
        if nbsp_del:
            temp = pattern.findall("".join(html_text.split()))
        else:
            temp = pattern.findall(html_text)
        if temp:
            return temp
        else:
            return ['暂无具体信息...']

if __name__ == '__main__':
    # print(QidianSpider.imgToBase64('https://bookcover.yuewen.com/qdbimg/349573/2571593/180'))
    # print(os.path.join(os.path.abspath(os.path.dirname(__file__)),'breakPoint.txt'))
    # print(QidianSpider.breakPoint({'page':15,'pages':[65,787],'bookName':[888,666]}))
    # QidianSpider.csrfGet()
    QidianSpider.scoreGet('1004608738')