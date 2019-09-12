#!/bin/bash
if [ `id -u` -eq 0 ]
then
	:
else
	echo -e "\033[32m请用root用户执行本脚本!\033[0m"
        exit
fi
#if [ -f "/root/miku_up.sh" ]
#then
#	chmod -R 0777 /root/miku_up.sh
#else
#	wget -q https://raw.githubusercontent.com/rmrfalll/miku/master/miku_up.sh
#	chmod -R 0777 /root/miku_up.sh
#fi
if [ -f "/root/miku.sh" ]
then 
	mv -f /root/miku.sh /root/miku
fi
#then
#    if [ -f "/usr/local/sbin/miku" ]
#    then
#        rm -rf /usr/local/sbin/miku
#	mv -f /root/miku.sh /usr/local/sbin/miku
##    	chmod -R 0777 /usr/local/sbin/miku
#    else
#    	mv -f /root/miku.sh /usr/local/sbin/miku
#	chmod -R 0777 /usr/local/sbin/miku
#	
#    fi
#fi
while true
do
echo -e "\033[32m欢迎使用多功能脚本,请输入序号选择功能\033[0m"
echo -e "\033[32m当前版本为:0.49\033[0m" 
echo 1.科学上网脚本集合
echo 2.各种工具脚本集合
echo 3.系统优化脚本集合
echo 4.计算圆周率
echo 5.更新脚本
echo 6.卸载脚本
echo 0.退出脚本
read -p ">>" m1
if	[ "$m1" == 1 ]
then
	while true
	do
	echo 1.SSR多用户管理系统安装脚本
	echo 2.V2RAY安装脚本
	echo 3.brook安装脚本
	echo 4.goflyway安装脚本
	echo 5.lightsocks安装脚本
	echo 6.daze安装脚本
	echo 7.mtproxy安装脚本
	echo 0.返回上级菜单
	read -p ">>" m2
	if [ "$m2" == 1 ]
	then
		wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/ssrmu.sh && chmod +x ssrmu.sh && bash ssrmu.sh
	elif	[ "$m2" == 2 ]
	then
		bash <(curl -s -L https://git.io/v2ray.sh)	
	elif	[ "$m2" == 3 ]
	then	
		wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/brook.sh && chmod +x brook.sh && bash brook.sh
	elif	[ "$m2" == 0 ]
	then
		break
	elif	[ "$m2" == 4 ]
	then
		wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/goflyway.sh && chmod +x goflyway.sh && bash goflyway.sh
	elif	[ "$m2" == 5 ]
	then
		wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/lightsocks.sh && chmod +x lightsocks.sh && bash lightsocks.sh	
	elif	[ "$m2" == 6 ]
	then
		wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/daze.sh && chmod +x daze.sh && bash daze.sh
	elif	[ "$m2" == 7 ]
	then
		wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/mtproxy.sh && chmod +x mtproxy.sh && bash mtproxy.sh
	else	
		echo -e "\033[32m输入错误\033[0m"
		
	fi
	done	
	
	
elif	[ "$m1" == 2 ]
then
	while true
	do
	echo 1.aria2安装脚本
	echo 2.rclone安装脚本
	echo 0.返回上级菜单
	read -p ">>" m2
	if [ "$m2" == 1 ]
	then
		wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/aria2.sh && chmod +x aria2.sh && bash aria2.sh
	elif	[ "$m2" == 2 ]
	then		
		curl https://rclone.org/install.sh | sudo bash	
	elif	[ "$m2" == 0 ]
	then
		break
		
	else	
		echo -e "\033[32m输入错误\033[0m"
		
	fi
	done	
	
	
elif	[ "$m1" == 3 ]
then
	while true
	do
	echo 1.安装BBR
	#echo 2.
	echo 0.返回上级菜单
	read -p ">>" m2
	if [ "$m2" == 1 ]
	then
		while true
		do
		echo 1.debian9或ubuntu18快速开启BBR
		echo 2.更换内核开启BBR
		echo 0.返回上级
		read -p ">>" m2
		if [ "$m2" == 1 ]
			then
				echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
				echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
				sysctl -p
				lsmod | grep bbr
				echo -e  "\033[32m⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆\033[0m"
				echo  -e   "\033[32m如果上面输出显示\"tcp_bbr  20480  14\"类似字样即为开启成功\033[0m"
		elif	[ "$m2" == 2 ]
			then
				wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubiBackup/doubi/master/bbr.sh && chmod +x bbr.sh && bash bbr.sh
		elif	[ "$m2" == 0 ]
			then	
				break
		else	
				echo -e "\033[32m输入错误\033[0m"
		
		fi
		done
	#elif	[ "$m2" == 2 ]	
	#then		
		
	elif	[ "$m2" == 0 ]
	then
		break
		
	else	
		echo -e "\033[32m输入错误\033[0m"
		
	fi
	done	
elif	[ "$m1" == 4 ]
then
	read -p "请输入要计算圆周率的小数点后的位数:" pi
	time echo "scale=$pi; a(1)*4" | bc -l
elif	[ "$m1" == 5 ]
then
	#exec /root/miku_up.sh
	#echo -e "\033[32m请先执行\n"rm -rf \/root\/miku.sh"\n"然后重新登陆ssh再执行"\n"wget -N https:\/\/raw.githubusercontent.com\/rmrfalll\/miku\/master\/miku.sh\&\&chmod -R 0777 \/root\/miku.sh \&\&bash miku.sh"\n\033[0m"
	#exit
	#rm -rf /root/miku.sh
	#wget -N https://raw.githubusercontent.com/rmrfalll/miku/master/miku.sh
	#chmod -R 0777 /root/miku.sh 
	#echo -e "\033[32m更新完成!请重新执行./miku\033[0m"
	if [ -f "/root/miupdate.sh" ]
	then
		chmod -R 0777 /root/miupdate.sh
	else
		wget -q https://raw.githubusercontent.com/rmrfalll/miku/master/miupdate.sh
		chmod -R 0777 /root/miupdate.sh
	fi
	#exec /root/miku_up.sh
	echo -e "\033[32m请执行\n"./miupdate.sh"\n来更新脚本!\033[0m"
	break
	
elif	[ "$m1" == 0 ]
then
	
	echo -e "\033[32m退出完成,执行./miku再次打开本脚本\033[0m"	
	break
elif	[ "$m1" == 6 ]
then
	rm -rf /root/miku.sh
	rm -rf /usr/local/sbin/miku
	echo -e "\033[32m卸载完成\033[0m"	
	break
else
	echo -e "\033[32m输入错误\033[0m"

fi
done
