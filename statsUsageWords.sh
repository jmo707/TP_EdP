#!/usr/bin/env bash
## Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene más apariciones a la que tiene menos). Es decir, filtrar las palabras que tengan al menos 4 letras y de éstas, elegir las 10 más usadas.

echo -e "\nstatsUsageWords indica cuales son las 10 palabras más utilizadas dentro del archivo de texto. Luego, estas palabras se muestras con sus repeticiones a la derecha y ordenadas de menor a mayor. Estas son las 10 palabras:\n"

sort "$1" | uniq -c | sort -nr | head -10