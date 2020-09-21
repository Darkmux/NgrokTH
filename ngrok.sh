#!/bin/bash
#
# Created by: Informatic_in_Termux
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
#
# FUNCIONES
#
function Install_Ngrok {
	sleep 0.5
	clear
echo -e "${verde}
 ▄▄▄   ▄▄     ▄▄▄▄   ▄▄▄▄▄▄      ▄▄▄▄    ▄▄   ▄▄▄
 ███   ██   ██▀▀▀▀█  ██▀▀▀▀██   ██▀▀██   ██  ██▀
 ██▀█  ██  ██        ██    ██  ██    ██  ██▄██
 ██ ██ ██  ██  ▄▄▄▄  ███████   ██    ██  █████
 ██  █▄██  ██  ▀▀██  ██  ▀██▄  ██    ██  ██  ██▄
 ██   ███   ██▄▄▄██  ██    ██   ██▄▄██   ██   ██▄
 ▀▀   ▀▀▀     ▀▀▀▀   ▀▀    ▀▀▀   ▀▀▀▀    ▀▀    ▀▀
"${blanco}
}
function token_ngrok {
	Install_Ngrok
	unzip ngrok-stable-linux-arm.zip
	chmod 777 ngrok
	cp ngrok ${PREFIX}/bin
echo -e -n "${verde}
┌═════════════════┐
█ ${blanco}NGROK AUTHTOKEN ${verde}█
└═════════════════┘
┃
└═>>> "${blanco}
read -r auth_token_ngrok
${auth_token_ngrok}
rm ngrok
echo -e "${verde}
┌═══════════════════════════════┐
█ ${blanco}NGROK INSTALADO CORRECTAMENTE ${verde}█
└═══════════════════════════════┘
"${blanco}
}
#
# CÓDIGO
#
if [ -x ${PREFIX}/bin/ngrok ]
then
Install_Ngrok
echo -e "${verde}
┌═════════════════════════┐
█ ${blanco}NGROK YA ESTÁ INSTALADO ${verde}█
└═════════════════════════┘
"${blanco}
else
token_ngrok
fi
