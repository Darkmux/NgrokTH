#!/data/data/com.termux/files/usr/bin/bash
#
# Created by: Termux Hacking
#
# Ngrok
#
# VARIABLES
source $HOME/NgrokTH/Colors.sh
#
# FUNCIONES
#
function NGROK {
	sleep 0.5
	clear
	echo -e "${verde}
 ▄▄▄   ▄▄                                ▄▄
 ███   ██                                ██                            ██▀█  ██   ▄███▄██   ██▄████   ▄████▄   ██ ▄██▀
 ██ ██ ██  ██▀  ▀██   ██▀      ██▀  ▀██  ██▄██                         ██  █▄██  ██    ██   ██       ██    ██  ██▀██▄
 ██   ███  ▀██▄▄███   ██       ▀██▄▄██▀  ██  ▀█▄                       ▀▀   ▀▀▀   ▄▀▀▀ ██   ▀▀         ▀▀▀▀    ▀▀   ▀▀▀
            ▀████▀▀"${blanco}
    }
function SI-NO {
echo -e "
${verde}┌══════════════┐
${verde}█ [${blanco}1${verde}] ┃   ${blanco}SI   ${verde}█
${verde}█══════════════█
${verde}█ [${blanco}2${verde}] ┃   ${blanco}NO   ${verde}█
${verde}└══════════════┘"${blanco}
}
#
# CÓDIGO
#
NGROK
echo -e "
${verde}┌══════════════════════════════┐
${verde}█ ${blanco}ACTUALIZANDO REPOSITORIOS... ${verde}█
${verde}└══════════════════════════════┘
"${blanco}
apt update && apt upgrade -y
sleep 0.5
while :
do
NGROK
echo -e "
${verde}┌═════════════════════════┐
${verde}█ ${blanco}¿QUIERE INSTALAR NGROK?${verde} █
${verde}└═════════════════════════┘"
SI-NO
echo -e -n "${verde}┃
└═>>> "${blanco}
read -r opcion
[ "$opcion" == "1" ]||[ "$opcion" == "2" ] && break
echo ""
echo -e ${rojo}"¡OPCIÓN INCORRECTA!"
echo ""
sleep 2
done
case $opcion in
	1)
		NGROK
		chmod 777 ngrok-stable-linux-arm.zip > /dev/null 2>&1
		unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
		rm ngrok-stable-linux-arm.zip > /dev/null 2>&1
		cp ngrok $PREFIX/bin > /dev/null 2>&1
echo -e -n "
${verde}┌═════════════════════════════════════════════┐
${verde}█ ${blanco}ESCRIBA SU AUTHTOKEN DE NGROK Y PULSE ENTER ${verde}█
${verde}└═════════════════════════════════════════════┘
┃
└═>>> "${blanco}

read -r respuesta
$respuesta
NGROK
echo -e "
${verde}┌══════════════════════════════════┐
${verde}█  ${blanco}NGROK INSTALADO CORRECTAMENTE${verde}   █
${verde}█       ${blanco}EJECUTAR UN COMANDO${verde}        █
${verde}└══════════════════════════════════┘

${verde}┌══════════════════════┐
${verde}█   ${blanco}ngrok http 4444${verde}    █
${verde}█══════════════════════█
${verde}█   ${blanco}ngrok tcp 4444${verde}     █
${verde}└══════════════════════┘
"${blanco}
		;;
	2)
		NGROK
echo -e ${verde}"
${verde}┌════════════════════════════════┐
${verde}█ ${blanco}PARA USAR NUEVAMENTE EL SCRIPT ${verde}█
${verde}█ ${blanco}EJECUTE EL COMANDO ./ngrok.sh  ${verde}█
${verde}└════════════════════════════════┘
"${blanco}
esac
