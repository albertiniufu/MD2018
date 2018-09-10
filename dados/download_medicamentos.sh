#!/bin/bash

#baixar dados
wget "https://dados.anvisa.gov.br/dados/TA_PRECOS_MEDICAMENTOS.csv" -O medicamentos_data.raw

#atualiza a data
touch medicamentos_data.raw

#ver codificacao "file dados.raw"
#converter para ASCII

#iconv -f ISO8859-1 -t ASCII//translit
iconv -f ISO8859-1 -t ascii//translit medicamentos_data.raw > medicamentos_data.csv
