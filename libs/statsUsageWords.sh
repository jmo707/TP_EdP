#!/usr/bin/env bash
## Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene más apariciones a la que tiene menos). Es decir, filtrar las palabras que tengan al menos 4 letras y de éstas, elegir las 10 más usadas.

### Inicialización de variables

declare -a aux_list=()

### Presentación del script

sleep 1s
echo -n -e "\e[33mstatsUsageWords\e[0m indica cuales son las 10 palabras más utilizadas. Estas palabras se muestran con la cantidad de repeticiones a la izquierda, y ordenadas de mayor a menor."

sleep 2s
echo -e "\nEstas son las 10 palabras:\n"

sleep 1s

### Loop inicial para poblar el array auxiliar con las palabras del archivo de texto, filtrando las de menos de 4 letras.

while read -r line
do
    for word in $line
    do
        if [ ${#word} -lt 4 ]
        then
            :
        else
            aux_list+=("$word")
        fi
    done
done < "$1"

### Manipulación del array mediante piping, y exposición de los datos (OUTPUT)

lista=$( (IFS=$'\n'; sort <<< "${aux_list[*]}") | uniq -c | sort -nr | head -10) # Input field separator y here-strings
echo -e "\e[33m$lista\e[0m"




#list=$(tr -c '[:alnum:]' '[\n*]' < prueba.txt | sort | uniq -c | sort -nr | head  -10)
#echo -e "\e[33m$list\e[0m"

# for word in $aux_list
# do
#     wordlength=${#word}
#             if [ ${#wordlength} -lt ${#shortest} ]
#             then
#                 shortest=${#word}
#             fi
