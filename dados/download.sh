wget https://dadosabertos.camara.leg.br/arquivos/proposicoes/proposicoes-2018.csv
iconv -f iso8859-1 -t ascii//translit proposicoes-2018.csv > proposicoes-2018-iconv.csv
rm proposicoes-2018.csv