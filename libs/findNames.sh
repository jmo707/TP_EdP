#!/usr/bin/env bash
## Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente. Ejemplos: Mateo, Estonoesunnombre, Ana.

### Presentación del script

sleep 1s
echo -e "\n\e[32mfindNames\e[0m busca palabras que comienzan con mayúsculas. Estas son las que se encontraron, por orden de aparición:\n"

sleep 2s

### Ejecución de programa externo con parámetro regex (OUTPUT)

list=$(grep -o '[[:upper:]][[:lower:]]*' < "$1")

echo -e "\e[32m$list\e[0m"

echo