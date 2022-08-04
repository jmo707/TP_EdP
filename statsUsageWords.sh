#!/usr/bin/env bash
## Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene más apariciones a la que tiene menos). Es decir, filtrar las palabras que tengan al menos 4 letras y de éstas, elegir las 10 más usadas.

count=0

while read -ra word
do

    for word in "${word[@]}"
    do
        if [ "$count" -eq 10 ]
        then
            break
        elif [ ${#word} -lt 4 ]
        then
            :
        elif [ ${#word} -gt 4 ] && [ "$count" -lt 10 ]
        then
            (( count++ ))
            #echo -e "$word\n" 
            tr -c '[:alnum:]' '[\n*]' < "$1" | sort | uniq -c | sort -nr | head  -10
        fi
    done

done < "$1"