#!/bin/bash

FILENAME="despesas-2017"

# baixar o arquivo
#wget -nv -O "${FILENAME}.raw.zip" "http://www.camara.leg.br/cotas/Ano-2017.csv.zip"

# descomprimir o arquivo
unzip -p "${FILENAME}.raw.zip" > "${FILENAME}.raw"
rm "${FILENAME}.raw.zip"

# nao eh possivel converter para ascii pois o arquivo cru contem 'ç'
#iconv -f utf-8 -t ascii > ${FILENAME}.csv
#rm "${FILENAME}.raw"

mv "${FILENAME}.raw" "${FILENAME}.csv"
