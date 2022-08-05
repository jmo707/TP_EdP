#!/usr/bin/env bash

declare -a options=("statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter" "Salir")

sleep 1s && echo

### Solicitud de archivo de texto por prompt (INPUT)

read -r -p "Bienvenidx. Indique la ruta absoluta al archivo de texto que se utilizará como entrada: " INPUT
echo "$INPUT"

echo "Puede elegir uno de los siguientes scripts para ejecutar sobre el archivo de texto, o bien salir del programa: "

select option in "${options[@]}"; do

    sleep 1s
    echo -e "\nHa elegido \e[1m$option\e[0m\n"
    sleep 2s

    case $option in
    statsWords)
        source ./libs/statsWords.sh "$INPUT"
        ;;
    statsUsageWords)
        source ./libs/statsUsageWords.sh "$INPUT"
        ;;
    findNames)
        source ./libs/findNames.sh "$INPUT"
        ;;
    statsSentences)
        source ./libs/statsSentences.sh "$INPUT"
        ;;
    blankLinesCounter)
        source ./libs/blankLinesCounter.sh "$INPUT"
        ;;
    Salir)
        break
        ;;
    esac
done
