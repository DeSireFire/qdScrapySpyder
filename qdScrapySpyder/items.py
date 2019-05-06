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
class QidianItem(scrapy.Item):
    '''
    表名：QidianItem
    变量名对应数据库字段名
    '''
    bName = scrapy.Field()    # 书名
    bKeys = scrapy.Field()    # 总字数
    bResClick = scrapy.Field()    # 总点击数（预留）
    bClick = scrapy.Field()    # 阅文总点击（预留）
    bVIPClick = scrapy.Field()    # 会员周点击（预留）
    bResRecommend = scrapy.Field()    # 总推荐（预留）
    bWeekRecommend = scrapy.Field()    # 周推荐（预留）
    bWriterName = scrapy.Field()    # 作者名
    bAction = scrapy.Field()    # 连载状态
    bType = scrapy.Field()    # 分类
    bIntro = scrapy.Field()    # 简介
    bMoreIntro = scrapy.Field()    # 介绍
    bURL = scrapy.Field()    # 书源URL
    # bIndex = scrapy.Field()    # 小说目录（没必要）
    bImgBase64 = scrapy.Field()    # 封面
    isD = scrapy.Field()    # 是否属于删除状态

class QidianChapterItem(scrapy.Item):
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
    isD = scrapy.Field()    # 是否属于删除状态

class QidianWriterItem(scrapy.Item):
    '''
    表名：QidianWriterItem
    变量名对应数据库字段名
    '''
    wUUID = scrapy.Field()  # 作者UUID
    wName = scrapy.Field()  # 姓名
    wItro = scrapy.Field()  # 作者简介
    wWorks = scrapy.Field() # 作品总数
    wWorkKeys = scrapy.Field()  # 累计字数
    wWorkDays = scrapy.Field()  # 创作天数
    isD = scrapy.Field()    # 是否属于删除状态
