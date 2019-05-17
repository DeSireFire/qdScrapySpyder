# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html
import json,pymysql
# class QidianPipeline(object):
#     pass
class QidianPipeline(object):
    def __init__(self, host, database, user, password, port):
        self.host = host
        self.database = database
        self.user = user
        self.password = password
        self.port = port

    @classmethod
    def from_crawler(cls, crawler):
        return cls(
            host=crawler.settings.get('MYSQL_HOST'),
            database=crawler.settings.get('MYSQL_DATABASE'),
            user=crawler.settings.get('MYSQL_USER'),
            password=crawler.settings.get('MYSQL_PASSWORD'),
            port=crawler.settings.get('MYSQL_PORT'),
        )

    def open_spider(self,spider):
        self.db = pymysql.connect(self.host,self.user,self.password,self.database,self.port,charset='utf8',)
        self.cursor = self.db.cursor()

    def close_spider(self,spider):
        self.cursor.close()
        self.db.close()

    def process_item(self,item,spider):
        if 'name' in dict(item).keys():
            self.mysql_insert_update(item, 'qidian_index')
        elif 'img' in dict(item).keys():
            self.mysql_insert_update(item, 'qidian_cover')
        else:
            self.mysql_insert_update(item, 'content_%s'%dict(item)['code'][0])
        return item

    def mysql_insert_update(self,item,tableName):
        '''
        针对mysql复用的管道函数，存在就进行更新，不存在则插入新条目
        注意： 数据库表中，必须存在有唯一约束的字段
        :param item:框架传递过来的item
        :param tableName:要存储到的表名
        :return:
        '''
        data = dict(item)
        # print(type(data))
        mykeys = ",".join(data.keys())
        myvalues = ",".join(['%s'] * len(data))
        myUpdate = ",".join([" {key} = %s".format(key=key) for key in data])+ ";"
        sql = "INSERT INTO {table}({keys}) VALUES ({values}) ON DUPLICATE KEY UPDATE".format(table=tableName,keys=mykeys,values=myvalues)
        # sql = "alter table {table} AUTO_INCREMENT=1;INSERT INTO {table}({keys}) VALUES ({values}) ON DUPLICATE KEY UPDATE".format(table=tableName,keys=mykeys,values=myvalues)
        sql += myUpdate
        try:
            if self.cursor.execute(sql, tuple(data.values()) * 2):
                self.db.commit()
        except Exception as e:
            print("更新数据 时发生错误:%s" % e)

if __name__ == '__main__':
    pass
    # QidianPipeline.mysql_insert_update