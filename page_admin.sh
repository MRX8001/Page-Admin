# /usr/bin/bash

for palavra in $(cat link.txt)
do

resposta=$(curl -s -o /dev/null -w "%{http_code}" $1/$palavra)
if [ $resposta == "200" ]
then

echo "Diretorio encontrado: $palavra"
fi
done
