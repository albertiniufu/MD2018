#!/bin/bash

wget http://www.portaltransparencia.gov.br/download-de-dados/ceaf/20180820 -O exp.zip
unzip exp.zip
mv 20180820_Expulsoes.csv Expulsoes.csv
iconv -f iso8859-1 -t ascii//translit Expulsoes.csv > Expulsoes.tmp
mv Expulsoes.tmp Expulsoes.csv