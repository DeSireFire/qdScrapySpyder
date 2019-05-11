# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

import scrapy

'''
字段名与类中的变量名相同即可
其中，QidianItem中的bWriterName对应的是QidianWriterItem的wUUID
'''
class qidian_index(scrapy.Item):
    '''
    表名：QidianItem
    变量名对应数据库字段名
    '''
    name = scrapy.Field()    # 书名
    category = scrapy.Field()    # 类别
    sub_category = scrapy.Field()    # 子类别
    author = scrapy.Field()    # 作者
    intro = scrapy.Field()    # 简介
    info = scrapy.Field()    # 介绍
    score = scrapy.Field()    # 评分
    img = scrapy.Field()    # 图片
    cover_url = scrapy.Field()    # 图片url
    uptime = scrapy.Field()    # 上传时间
    code = scrapy.Field()    # url>md5
    count_chapter = scrapy.Field()    # 章节数
    tags = scrapy.Field()    # 标签
    new_chapter = scrapy.Field()    # 最新章节
    new_uptime = scrapy.Field()    # 最新章节更新时间
    size_num = scrapy.Field()    # 全文字数
    click_num = scrapy.Field()    # 点击数
    week_click_num = scrapy.Field()    # 周点击数
    recommend_num = scrapy.Field()    # 推荐数
    week_recommend_num = scrapy.Field()    # 周推荐数
    status = scrapy.Field()    # 连载状态，连载中的小说为1，完本为0
    qidian_url = scrapy.Field()    # 封面
    relation_81zw = scrapy.Field()    # 笔趣阁url

class content_0(scrapy.Item):
    '''
    表名：QidianChapterItem
    变量名对应数据库字段名
    '''
    cOrder = scrapy.Field()  # '所属小说顺序'
    cBook = scrapy.Field()  # '所属小说名'
    cTitle = scrapy.Field()  # '所属卷名'
    cName = scrapy.Field()  # '章节名'
    fullName = scrapy.Field() # '章节全名，建议建立 唯一索引 例如：放开那个女巫_正文卷_第一千四百六十八章 燃点'
    cUT = scrapy.Field()  # '更新时间'
    cKeys = scrapy.Field()  # '字数'
    cContent = scrapy.Field()  # '字数'

class qidian_cover(scrapy.Item):
    '''
    表名：QidianWriterItem
    变量名对应数据库字段名
    '''
    img = scrapy.Field()  # 作者UUID
    type = scrapy.Field()  # 姓名
    code = scrapy.Field()  # 作者简介
    url = scrapy.Field() # 作品总数
