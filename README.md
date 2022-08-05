### Juan Manuel Oppedisano

Tecnicatura Universitaria en Inteligencia Artificial

1er año - Entorno de Programación

Docentes: *Juan Pablo Michelino, Luciano Barletta, Luciano Anselmino.*

# TRABAJO FINAL

El trabajo consiste en un programa destinado al análisis y manipulación de cadenas en Bash.
El programa está compuesto por:

- Una función o script principal (Menú.sh) que pide un archivo de texto como entrada del programa y presenta un menú al usuario mediante el cual se pueden aplicar cualquiera de los 5 scripts siguientes, todos almacenados en la carpeta libs.
  
- 1) **statsWords** > Indicador estadístico de longitud de palabras. Devuelve la cantidad, la más larga, la más corta y el promedio de letras por oración.
- 2) **statsUsageWords** > Indicador estadístico de uso de palabras. Filtra las palabras de menos de 4 letras y luego devuelve una lista ordenada con las 10 más usadas entre las restantes.
- 3) **findNames** > Identificación de palabras que empiezan con mayúscula (y potencialmente nombres propios)
- 4) **statsSentences** > Indicador estadístico de longitud de oraciones. Devuelve la cantidad, la más larga, la más corta y el promedio de letras por oración.
- 5) **blankLinesCounter** > Contador de línes en blanco.

El script principal ofrece, además, una opción 6) que permite salir del menú invocado mediante *select*
