#!/bin/bash
rm -rf /root/miku.sh
rm -rf /usr/local/sbin/miku
wget -N https://raw.githubusercontent.com/rmrfalll/miku/master/miku.sh
chmod -R 0777 miku.sh 
echo -e "\033[32m更新完成!请重新执行./miku使用脚本!\033[0m"
