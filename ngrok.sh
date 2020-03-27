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
function SI-NO {
echo -e "
${morado}|---------|
${morado}|${verde}[${amarillo}1${verde}]${cyan} SI${morado}   |
${morado}|---------|
${morado}|${verde}[${amarillo}2${verde}]${cyan} NO${morado}   |
${morado}|---------|${blanco}
"
}
#
sleep 0.5
clear
echo -e "
${verde}[${amarillo}√${verde}] ${cyan}ACTUALIZANDO REPOSITORIOS
"${blanco}
apt update && apt upgrade -y
sleep 0.5
while :
do
clear
echo -e "
${verde}SE INSTALARÁ NGROK
${amarillo}¿Está de acuerdo?"
SI-NO
echo -e -n "${cyan}>>> "${blanco}
read -r opcion
[ "$opcion" == "1" ]||[ "$opcion" == "2" ] && break
echo ""
echo -e ${rojo}"¡RESPUESTA NO VÁLIDA!"
echo ""
sleep 2
done
case $opcion in
	1)
		sleep 0.5
		clear

		chmod 777 ngrok-stable-linux-arm.zip
		unzip ngrok-stable-linux-arm.zip
		rm ngrok-stable-linux-arm.zip
		cp ngrok $PREFIX/bin
echo -e -n "
${amarillo}ESCRIBA SU AUTHTOKEN DE NGROK Y PULSE ENTER >>> "${blanco}
read -r respuesta
${respuesta}
echo -e ""
echo -e "${verde}NGROK INSTALADO CORRECTAMENTE
EJECUTAR UNO DE ESTOS COMANDOS

${cyan}ngrok http 4444
ngrok tcp 4444
"${blanco}
		;;
	2)
		sleep 0.5
		clear
echo -e ${cyan}"
GRACIAS POR USAR MI SCRIPT
"${blanco}
esac
