#!/usr/bin/env bash
## Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud).

### Declaración de funciones

word_count() {
    declare -i wc_return
    wc_return=$(wc -w <"$1")
    echo -n -e "(\e[36m$wc_return\e[0m)"
}

word_count_average() {
    declare -i wca_return
    dividendo=$(wc -m <"$1")
    divisor=$(wc -w <"$1")
    wca_return=$((dividendo / divisor))
    echo -n -e "(\e[36m$wca_return\e[0m)"
}

shortest_word() {
    shortest=100

    while read -r line
    do
        for word in $line
        do
            wordlength=${#word}
            if [ ${#wordlength} -lt ${#shortest} ]
            then
                shortest=${#word}
            fi
        done
    done <"$1"

    echo -n -e "(\e[36m$shortest\e[0m)"
}

longest_word() {
    longest=0

    while read -r line
    do
        for word in $line
        do
            wordlength=${#word}
            if [ ${#wordlength} -ge ${#longest} ]
            then
                longest=${#word}
            fi
        done
    done <"$1"

    echo -n -e "(\e[36m$longest\e[0m)"
}

### Presentación del script

sleep 1s
echo -n -e "\e[36mstatWords\e[0m devuelve valores respecto de PALABRAS analizando un archivo de texto."

sleep 1s
echo -e "\nstatsWords a determinado 4 valores estadísticos:\n"

sleep 2s

### Llamado a funciones (OUTPUT)

word_count "$@" && echo " es la cantidad de palabras."
sleep 1s
shortest_word "$@" && echo " es la cantidad de letras de la palabra más corta."
sleep 1s
longest_word "$@" && echo " es la cantidad de letras de la palabra más larga."
sleep 1s
word_count_average "$@" && echo " es la cantidad promedio de letras por palabra en el documento."
