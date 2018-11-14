# /usr/bin/bash
#
clear
figlet Lord Termux
sleep 2
clear
#
#
figlet P-Admin
#
#
echo "DIGITE A URL DO SITE (Ex:www.site.com ou site.com)"

for palavra in $(cat link.txt)
do

resposta=$(curl -s -o /dev/null -w "%{http_code}" $1/$palavra)
if [ $resposta == "200" ]
then

echo "Diretorio encontrado: $palavra"
fi
done
