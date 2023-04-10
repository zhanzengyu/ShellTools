#!/bin/sh
#########################################
# File Name: adb.sh
# Version: v1.0
# Author: zhanzengyu
# Email: 553838510@qq.com
#########################################

chmod u+x ./adb
mv ./adb ~/Documents
touch ~/.zshrc
echo "export PATH=\$PATH:~/Documents" >>  ~/.zshrc
