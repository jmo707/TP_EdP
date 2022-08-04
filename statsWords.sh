#!/usr/bin/env bash
## Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud).

sleep 1s

echo "statsWords devuelve valores respecto de PALABRAS analizando un archivo de texto."
sleep 1s
echo -e "\nstatsWords a determinado 4 valores estadísticos:\n"

word_count()
{
    declare -i wc_return
    wc_return=$(wc -w < $1)
    echo -n "[$wc_return]"
}

word_count_average()
{
    declare -i wca_return
    dividendo=$(wc -m  < "$1")
    divisor=$(wc -w < "$1")
    wca_return=$((dividendo / divisor))
    echo -n "[$wca_return]"
}

shortest_word()
{
    shortest=100

    while read -r word
    do
        linelength=${#word}
        if [ ${#linelength} -lt ${#shortest} ]
        then
        shortest=${#word}
        fi
    done < "$1"

echo -n "[$shortest]"
}

longest_word()
{
    longest=0

    while read -r word
    do
        linelength=${#word}
        if [ ${#linelength} -gt ${#longest} ]
        then
        longest=${#word}
        fi
    done < "$1"

echo -n "[$longest]"
}

word_count "$@" && echo " es la cantidad de palabras."
shortest_word "$@" && echo " es la cantidad de letras de la palabra más corta."
longest_word "$@" && echo " es la cantidad de letras de la palabra más larga."
word_count_average "$@" && echo " es la cantidad promedio de letras por palabra en el documento."


