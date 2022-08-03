#!/usr/bin/env bash

sleep 2s && echo

read -p "Bienvenidx. Indique la ruta absoluta al archivo de texto que se utilizará como entrada: " INPUT
echo "$INPUT"

declare -a options=("statsWords.sh" "statsUsageWords.sh" "findNames.sh" "statsSentences.sh" "blankLinesCounter.sh")

echo "${options[@]}"
