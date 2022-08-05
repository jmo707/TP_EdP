#!/usr/bin/env bash
## Contador de líneas en blanco.

### Presentación del script

sleep 1s
echo -e "\n\e[35mblankLinesCounter\e[0m cuenta las líneas en blanco dentro de un archivo de texto."

### Ejecución de programa externo con parámetro regex (OUTPUT)

blank_lines=$(grep -c "^$" "$1")
sleep 2s
echo -e "[\e[35m$blank_lines\e[0m] es la cantidad de líneas en blanco."
echo
