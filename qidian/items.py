# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class QidianItem(scrapy.Item):
    bName = scrapy.Field()    # 书名
    bKeys = scrapy.Field()    # 总字数
    bResClick = scrapy.Field()    # 总点击数
    bClick = scrapy.Field()    # 阅文总点击
    bVIPClick = scrapy.Field()    # 会员周点击
    bResRecommend = scrapy.Field()    # 总推荐
    bWeekRecommend = scrapy.Field()    # 周推荐
    bWriterName = scrapy.Field()    # 作者UUID
    bAction = scrapy.Field()    # 连载状态
    bType = scrapy.Field()    # 分类
    bIntro = scrapy.Field()    # 简介
    bMoreIntro = scrapy.Field()    # 介绍
    bURL = scrapy.Field()    # 书源URL
    bIndex = scrapy.Field()    # 小说目录
    bImgBase64 = scrapy.Field()    # 封面
    isD = scrapy.Field()    # 是否属于删除状态

class QidianChapterItem(scrapy.Item):
    cBook = scrapy.Field()  # '所属小说名名'
    cTitle = scrapy.Field()  # '所属卷名'
    cName = scrapy.Field()  # '章节名'
    cUT = scrapy.Field()  # '更新时间'
    cKeys = scrapy.Field()  # '字数'
    isD = scrapy.Field()    # 是否属于删除状态

class QidianWriterItem(scrapy.Item):
    wUUID = scrapy.Field()  # 作者UUID
    wName = scrapy.Field()  # 姓名
    wItro = scrapy.Field()  # 作者简介
    wWorks = scrapy.Field() # 作品总数
    wWorkKeys = scrapy.Field()  # 累计字数
    wWorkDays = scrapy.Field()  # 创作天数
    isD = scrapy.Field()    # 是否属于删除状态
