#!/usr/bin/env bash
## Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene más apariciones a la que tiene menos). Es decir, filtrar las palabras que tengan al menos 4 letras y de éstas, elegir las 10 más usadas.

while read -ra word
do
    for word in "${word[@]}"
    do
        if [ ${#word} -lt 4 ]
        then
            :
        else
            echo -e "$word\n"
        fi
    done
done < "$1"