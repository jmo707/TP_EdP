#!/usr/bin/env bash
## Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente. Ejemplos: Mateo, Estonoesunnombre, Ana.

echo -e "\nfindNames busca palabras que comiencen con mayúsculas. Estas son las que se encontraron:\n"
sleep 1s
grep '[[:upper:]][[:lower:]]*' < "$1"