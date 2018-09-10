#Esse arquivo contém o metodo para baixar a base de dados de duas maneiras 

#Usar essa linha de codigo caso esteja utilizando o ambiente da UFU.
Sys.setenv(https_proxy="proxy.ufu.br:3128")

require(pacman)

p_load(curl)

dados <- "http://www.defesa.gov.br/arquivos/dadosabertos/serie_historica_2000a2018_ate_30abr18.CSV"

curl_download(dados, "historica2018.csv", quiet=T)



#Não há necessidade de usar essa linha de codigo para transformar os tipo de dados
#pois ele já se encontra em padrão ISO8859-1 e caso mude pode causar conflitos.
#iconv -f ISO8859-1 -t ASCII//translit historica2018.raw > historica2018.csv

