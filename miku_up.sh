#!/bin/bash
rm -rf /root/miku.sh
rm -rf /usr/local/sbin/miku
wget -N https://raw.githubusercontent.com/rmrfalll/miku/master/miku.sh
chmod -R 0777 /root/miku.sh 
echo -e "\033[32m更新完成\033[0m"
bash miku.sh
