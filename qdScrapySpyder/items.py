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
    表名：qidian_index
    变量名对应数据库字段名
    '''
    code = scrapy.Field()    # url>md5
    name = scrapy.Field()    # 书名
    category = scrapy.Field()    # 类别
    sub_category = scrapy.Field()    # 子类别
    author = scrapy.Field()    # 作者
    intro = scrapy.Field()    # 简介
    info = scrapy.Field()    # 介绍
    score = scrapy.Field()    # 评分
    cover_url = scrapy.Field()    # 图片url
    uptime = scrapy.Field()    # 上传时间
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
    chapter_status = scrapy.Field()    # 连载状态，连载中的小说为1，完本为0
    qidian_url = scrapy.Field()    # 起点url
    relation_biquge = scrapy.Field()    # 笔趣阁urlrr

class content_0(scrapy.Item):
    '''
    表名：content_[0-9 a-z]
    变量名对应数据库字段名
    '''
    code = scrapy.Field()  # 'code编码'
    rand = scrapy.Field()  # '章节排序编号'
    title = scrapy.Field()  # '章节标题'
    content = scrapy.Field()  # '章节内容'
    remote = scrapy.Field() # '章节备注'

class qidian_cover(scrapy.Item):
    '''
    表名：qidian_cover
    变量名对应数据库字段名
    '''
    code = scrapy.Field()  # code编码
    type = scrapy.Field()  # 数据类型
    img = scrapy.Field()  # 图片base64

# syntarerror.pid