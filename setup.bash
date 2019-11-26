#!/bin/bash
# Bigtoken Auto Bot
# Script by Tuko Van
clear

if [ "$(uname -o)" != 'Android' ]; then
 echo -e "[\e[1;31mError\e[0m] This script is for Termux Android users only"
 exit 1
fi


echo -e ""
termux-setup-storage
echo -e "To continue configuring, press \e[1;32mAllow\e[0m\n"
sleep 3

cd
apt update && apt upgrade -y
pkg install php -y
apt install python python2 git nano curl wget -y
pip install --upgrade pip
pip install requests
cd storage/shared
rm -rf bigtoken
git clone https://github.com/Nonstops/bigtoken.git
sleep 3

cd /data/data/com.termux/files/home
rm -rf setup.bash
clear
echo -e "\n\nSuccessfully Installation!\n\n Your config is located at /storage/shared/bigtoken\n\n Type=> cd storage/shared/bigtoken && php bot.php <=Press Enter!"
cd
exit 1
