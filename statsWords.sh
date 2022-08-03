#!/usr/bin/env bash
## Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud).

INPUT=

word_count(){
    local wc_return=$(wc -w < INPUT)
    echo wc_return
}

word_count_average(){
    wca_return=$((wc -m < INPUT / wc -w < INPUT)) # ¿Convendría utilizar wc_return?
    echo wca_return
}

shortest_word(){
    shortest=100

    while read line
    do
    linelength=${#line}
    if [ $linelength -lt $shortest ];
    then
        shortest=$line
    fi
done

echo $shortest
}

longest_word(){
    longest=0

    shortest=100

    while read line
    do
    linelength=${#line}
    if [ $linelength -lt $longest ];
    then
        longest=$line
    fi
done

echo $longest
}

echo "La cantidad de palabras en el documento es: $wc_return"
echo "La palabra más corta es: $sw_return"
echo "La palabra más larga es: $lw_return"
echo "El promedio de caractéres de todas las palabras es: $wca_return"


