#!/usr/bin/env bash
## Indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud).

### Declaración de funciones

sentences_count() {
    declare -i sc_return
    sc_return=$(awk '/[A-Z]/ , /\. / {print}' <"$1" | wc -l) # Forma 1
    echo -e "[\e[34m$sc_return\e[0m] es la cantidad de oraciones (que empiezan con mayúscula y terminan en un punto)"

}

sentence_count_average() {
    declare -i sca_return
    dividendo=$(awk '/^[A-Z]/ , /\.$/ {print}' <"$1" | wc -m) # Forma 2
    divisor=$(awk '/^[A-Z]/ , /\.$/ {print}' <"$1" | wc -l) # Forma 2
    sca_return=$((dividendo / divisor))
    echo -e "[\e[34m$sca_return\e[0m] es el promedio de caracteres por oración."
}

shortest_sentence() {
    sentence_shortness=$(awk '/\. */ {print length}' <"$1" | sort -n | head -n1) # Forma 3
    short_sentence=$(awk '/\. */ {print}' <"$1" | head -n1) # Forma 3
    echo -e "[\e[34m$sentence_shortness\e[0m] es la cantidad de caracteres de la oración más corta: $short_sentence"
}

longest_sentence() {
    sentence_longness=$(awk '/^[A-Z]/ && /\. *$/ {print length}' <"$1" | sort -n | tail -n1) # Forma 4
    long_sentence=$(awk '/^[A-Z]/ && /\. *$/ {print}' <"$1" | tail -n1) # Forma 4
    echo -e "[\e[34m$sentence_longness\e[0m] es la cantidad de caracteres de la oración más larga: $long_sentence"
}

### Presentación del script

#sleep 1s
echo -n -e "\e[34mstatsSentences\e[0m devuelve valores respecto de ORACIONES analizando un archivo de texto."

#sleep 1s
echo -e "\nstatsSentences a determinado 4 valores estadísticos:\n"

### Llamado a funciones (OUTPUT)

sentences_count "$@"
sentence_count_average "$@"
shortest_sentence "$@"
longest_sentence "$@"
