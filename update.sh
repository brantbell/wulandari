#!/bin/bash

log=/var/log/update-script.log

#This colour
cyan='\e[0;36m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'

if [[ $USER != 'root' ]]; then
	echo -e $yellow"Maaf, Anda harus menjalankan ini sebagai root"
	exit
fi

# go to root
cd

echo -e $yellow "[ ! ]  Proses Updating Script VPS .....  "
echo -e $yellow "[ ! ]  ................     Please wait  "
wget -O /usr/bin/dropmon "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/dropmon.sh" >> $log 2>&1
wget -O /usr/bin/menu "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/menu.sh" >> $log 2>&1
wget -O /usr/bin/user-add "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/user-add.sh" >> $log 2>&1
wget -O /usr/bin/user-add-vpn "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/user-add-vpn.sh" >> $log 2>&1
wget -O /usr/bin/user-add-pptp "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/user-add-pptp.sh" >> $log 2>&1
wget -O /usr/bin/user-expire "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/user-expire.sh" >> $log 2>&1
wget -O /usr/bin/user-gen "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/user-gen.sh" >> $log 2>&1
wget -O /usr/bin/user-limit "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/user-limit.sh" >> $log 2>&1
wget -O /usr/bin/user-list "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/user-list.sh" >> $log 2>&1
wget -O /usr/bin/user-login "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/user-login.sh" >> $log 2>&1
wget -O /usr/bin/user-active-list "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/user-active-list.sh" >> $log 2>&1
wget -O /usr/bin/user-renew "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/user-renew.sh" >> $log 2>&1
wget -O /usr/bin/user-del "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/user-del.sh" >> $log 2>&1
wget -O /usr/bin/user-pass "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/user-pass.sh" >> $log 2>&1
wget -O /usr/bin/user-expire-list "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/user-expire-list.sh" >> $log 2>&1
wget -O /usr/bin/user-banned "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/user-banned.sh" >> $log 2>&1
wget -O /usr/bin/unbanned-user "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/unbanned-user.sh" >> $log 2>&1
wget -O /usr/bin/delete-user-expire "https://raw.githubusercontent.com/brantbell/wulandari/srie/repo/delete-user-expire.sh" >> $log 2>&1

chmod +x /usr/bin/dropmon >> $log 2>&1
chmod +x /usr/bin/menu >> $log 2>&1
chmod +x /usr/bin/user-add >> $log 2>&1
chmod +x /usr/bin/user-add-vpn >> $log 2>&1
chmod +x /usr/bin/user-add-pptp >> $log 2>&1
chmod +x /usr/bin/user-expire >> $log 2>&1
chmod +x /usr/bin/user-gen >> $log 2>&1
chmod +x /usr/bin/user-limit >> $log 2>&1
chmod +x /usr/bin/user-list >> $log 2>&1
chmod +x /usr/bin/user-login >> $log 2>&1
chmod +x /usr/bin/user-active-list >> $log 2>&1
chmod +x /usr/bin/user-renew >> $log 2>&1
chmod +x /usr/bin/user-del >> $log 2>&1
chmod +x /usr/bin/user-pass >> $log 2>&1
chmod +x /usr/bin/user-expire-list >> $log 2>&1
chmod +x /usr/bin/user-banned >> $log 2>&1
chmod +x /usr/bin/unbanned-user >> $log 2>&1
chmod +x /usr/bin/delete-user-expire >> $log 2>&1
echo -e $lightgreen "[ ✔ ]  Script Now Updated     "
echo -e $white "Terimakasih SUdah Menggunakan Script ./ZHANGZI-MANIA"
rm update.sh
history -c
