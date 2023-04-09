#!/bin/sh
#########################################
# File Name: logcat.sh
# Version: v1.0
# Author: zhanzengyu
# Email: 553838510@qq.com
#########################################

path=~/Desktop/
cd $path

if [ ! -n "$1" ] ;then
  filename=$(date "+%Y-%m-%d_%H:%M:%S")
else
  filename=$1
fi

adb logcat -c
echo '日志存入中......'
echo '请执行完需要的操作后按 ctrl+c 结束'
echo '然后到桌面查找 '$filename'.txt 文件'
adb logcat >> $filename.txt