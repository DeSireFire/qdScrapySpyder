# qdScrapySpyder

## 概要
基于scrapy+Requests开发的起点小说中文网+第三方笔趣阁的小说采集程序。

## 环境变量
* 开发环境 python 3.6.5 ，测试环境 python 3.5.2
* mysql 5.5+
* 运行于 win10 1703 & Ubuntu 16.04.6 LTS
* venv如下：

> asn1crypto==0.24.0  
> attrs==19.1.0  
> Automat==0.7.0  
> certifi==2019.3.9  
> cffi==1.12.3  
> chardet==3.0.4  
> constantly==15.1.0  
> cryptography==2.6.1  
> cssselect==1.0.3  
> hyperlink==19.0.0  
> idna==2.8  
> incremental==17.5.0  
> lxml==4.3.3  
> parsel==1.5.1  
> pkg-resources==0.0.0  
> pyasn1==0.4.5  
> pyasn1-modules==0.2.5  
> pycparser==2.19  
> PyDispatcher==2.0.5  
> PyHamcrest==1.9.0  
> PyMySQL==0.9.3  
> pyOpenSSL==19.0.0  
> queuelib==1.5.0  
> requests==2.21.0  
> Scrapy==1.6.0  
> service-identity==18.1.0  
> six==1.12.0  
> Twisted==19.2.0  
> urllib3==1.24.3  
> w3lib==1.20.0  
> zope.interface==4.6.0  

## 安装&&配置

### 爬虫程序安装
进入爬虫项目文件目录下，运行如下命令来安装爬虫运行环境：
> pip3 install -r requirements.txt

### 免费代理池安装&&运行（如果有自己的代理池此步可跳过）
* 需要安装redis
* 进入代理池项目文件目录下，查看其目录下的readme.md操作即可

### 数据库表
qdScrapySpyder\qdScrapySpyder\table\qidian.sql 导入即可，可根据自己的需求修改。  
其中sql.sql为备用表，可以不理会。

### screen 安装
以 Ubuntu 16.04 为例
安装 screen，非root用户需加sudo
> apt-get update  
> apt-get install screen

### 爬虫程序运行
目标文件：qdScrapySpyder\qidian.sh  

使用 screen 脚本运行：
* 调用帮助
* $ bash ./qidian.sh --help
* 在screen中打开起点爬虫
* $ bash ./qidian.sh -r
* 结束现有开启的起点爬虫终端
* $ bash ./qidian.sh -kf
* 查看起点爬虫运行状态
* $ bash ./qidian.sh -s
* 将后台的起点爬虫screen调至前台
* $ bash ./qidian.sh -f

or

scrapy 命令直接运行：
* 全运行
> python3 entryPoint.py

* 单独运行全站爬取
> scrapy crawl qidian

* 单独运行更新爬取
> scrapy crawl qdUpdate

## 参数设置
详见 qdScrapySpyder/settings.py

## PS
由于起点的反爬特点，该爬虫必须依赖于代理池才能正常运行，IP质量直接影响采集效率。