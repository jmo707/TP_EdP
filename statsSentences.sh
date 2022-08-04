#!/usr/bin/env bash
## Indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud).

sleep 1s

echo "statsSentences devuelve valores respecto de ORACIONES analizando un archivo de texto."
sleep 1s
echo -e "\nstatsSentences a determinado 4 valores estadísticos:\n"

sentences_count()
{
    declare -i sc_return
    sc_return=$(awk '/^[A-Z]/ && /\.$/ {print}' < "$1" | wc -l)
    echo "[$sc_return] es la cantidad de oraciones (que empiezan con mayúscula y terminan en un punto)"
    
}

sentence_count_average()
{
    declare -i sca_return
    dividendo=$(awk '/^[A-Z]/ && /\.$/ {print}' < "$1" | wc -m)
    divisor=$(awk '/^[A-Z]/ && /\.$/ {print}' < "$1" | wc -l)
    sca_return=$((dividendo / divisor))
    echo "[$sca_return] es el promedio de caractéres por oración."
}

shortest_sentence()
{
    sentence_shortness=$(awk '/^[A-Z]/ && /\.$/ {print length}' < "$1" | sort -n | head -n1)
    short_sentence=$(awk '/^[A-Z]/ && /\.$/ {print}' < "$1" | head -n1)
    echo -e "[$sentence_shortness] es la cantidad de caractéres de la oración más corta: $short_sentence"
}

longest_sentence()
{
    sentence_longness=$(awk '/^[A-Z]/ && /\.$/ {print length}' < "$1" | sort -n | tail -n1)
    long_sentence=$(awk '/^[A-Z]/ && /\.$/ {print}' < "$1" | tail -n1)
    echo -e "[$sentence_longness] es la cantidad de caractéres de la oración más larga: $long_sentence"
}

sentences_count "$@"
sentence_count_average "$@"
shortest_sentence "$@"
longest_sentence "$@"