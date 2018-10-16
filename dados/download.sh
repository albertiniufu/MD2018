wget https://dadosabertos.camara.leg.br/arquivos/proposicoes/csv/proposicoes-2018.csv
iconv -f UTF-8 -t ascii//translit proposicoes-2018.csv > proposicoes-2018ascii.csv
#rm proposicoes-2018.csv
