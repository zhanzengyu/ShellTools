#!/bin/sh
#########################################
# File Name: init.sh
# Version: v1.0
# Author: zhanzengyu
# Email: 553838510@qq.com
#########################################

echo "--------开始日志神器的配置---------"
function isCmdExist() {
        local cmd="$1"
        if [ -z "$cmd" ]; then
                echo "Usage isCmdExist yourCmd"
                return 1
        fi

        which "$cmd" >/dev/null 2>&1
        if [ $? -eq 0 ]; then
                return 0
        fi

        return 2
}
if !(isCmdExist adb); then
  chmod u+x ./adb.sh
  ./adb.sh
else
  echo "真棒！你的电脑已经配置过 adb，不需要额外配置了～"
fi

chmod u+x ./logcat.sh
mv ./logcat.sh ~/Documents
touch ~/.zshrc
echo "alias zzylog='~/Documents/logcat.sh'" >>  ~/.zshrc
echo "------日志神器配置还差最后一步---------"
echo "请拷贝下面命令到终端执行以完成日志神器的配置，之后你就可以在命令行输入 zzylog 来抓取日志了，记得连接上设备哦～"
echo "source ~/.zshrc"
