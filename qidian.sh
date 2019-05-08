#!/bin/sh
# 调用帮助
# $ bash ./qidian.sh --help
# 在screen中打开起点爬虫
# $ bash ./qidian.sh -r
# 结束现有开启的起点爬虫终端
# $ bash ./qidian.sh -kf
# 查看起点爬虫运行状态
# $ bash ./qidian.sh -s
# 将后台的起点爬虫screen调至前台
# $ bash ./qidian.sh -f
if [ "$1" == --help ];then
    printf " ==========================================\n"
    printf " -r\t基于screen的一键运行脚本,使用前，确保已经安装screen\n"
    printf " -r\t如果存在qidian则重新启动\n"
    printf " -kf\t如果存在qidian则kill掉该进程\n"
    printf " -s\t查看qidian的状态\n"
    printf " -f\t将qidian调至前台\n"
    printf " --help\t帮助\n"
    printf " ------------------------------------------\n"
    exit 0
fi

declare -a pid_screen
declare pid
if [ "$1" == -f ];then
    pid_screen=$(screen -list | grep 'qidian'|cut -d . -f 1)
    printf ${pid_screen}
    if [ -n ${pid_screen} ];then

    if [ ${#pid_screen[*]} -eq 1 ];then
        screen  -r qidian
    else
        printf "\t有多个qidian\n"
        screen -list
    fi
    else
        printf "\t后台没有qidian\n"
    exit 0
    fi
    exit 0
fi

#查询是否已经开启qidian
pid=$(ps -ef | grep entryPoint.py | egrep -v 'grep|screen|tee|SCREEN' | awk '{ printf $2}')


if [ -n "$1" ]; then
    if [ "$1" == -r ];then
    if [ -n "$pid"  ];then
        kill $pid
    fi
    #       echo "kill"

    elif [ "$1" == -kf ];then
    if [ -n "$pid" ];then
        kill $pid
    fi

    pid_screen=$(screen -list | grep 'qidian'|cut -d . -f 1 )
    if [ ${#pid_screen[*]} -eq 1 ];then
        kill $pid_screen

        exit 0
    fi
    elif [ "$1" == -ka ];then
    if [ -n "$pid" ];then
        kill $pid
    fi
        pid_screen=$(screen -list | grep 'qidian'|cut -d . -f 1)
        kill $pid_screen

        exit 0
    elif [ "$1" ==  -s ]; then
    if [ -n "$pid" ]; then
        printf "\t qidian在运行\n"
        ps -ef | grep entryPoint.py | egrep -v 'grep|screen|tee|SCREEN'
    else
        printf "\t qidian没有运行\n"
    fi
    exit 0
    else
    printf "\t参数不正确\n使用--help可查看参数\n"

    exit 0
    fi
else
    printf "\t参数不正确\n使用--help可查看参数\n"

    exit 0
fi


unset pid
unset pid_screen
date >> ./qidian.log
screen -R qidian python entryPoint.py nogui| tee -a ./qidian.log
