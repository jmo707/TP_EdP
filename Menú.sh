#!/usr/bin/env bash

declare -a options=("statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter")

sleep 1.5s && echo

read -p "Bienvenidx. Indique la ruta absoluta al archivo de texto que se utilizará como entrada: " INPUT
echo "$INPUT"

echo "Elija uno de los siguientes scripts para ejecutar sobre el archivo de texto: "

select option in "${options[@]}"
do

sleep 1s
echo -e "\nHa elegido $option\n"
sleep 1s

case $option in
statsWords)
source statsWords.sh "$INPUT"
break
;;
statsUsageWords)
source statsUsageWords.sh "$INPUT"
break
;;
findNames)
source findNames.sh "$INPUT"
break
;;
statsSentences)
source statsSentences.sh "$INPUT"
break
;;
blankLinesCounter)
source blankLinesCounter.sh "$INPUT"
break
;;
esac
done
