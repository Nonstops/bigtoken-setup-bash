#!/bin/bash
# Bigtoken setup
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
apt install php python python2 wireguard-tools git nano curl wget -y
pip install --upgrade pip
pip install requests
cd storage/shared
rm -rf bigtoken && mkdir -p bigtoken
cd bigtoken
curl -4sO 'https://raw.githubusercontent.com/Nonstops/bigtoken/master/bot.php'
php bot.php