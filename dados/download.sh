wget https://dadosabertos.capes.gov.br/dataset/d920f252-9e36-4ef2-9760-c6f4611ef669/resource/bea44ea5-4233-41d8-a675-2bb9e331a003/download/ddi-br-capes-btd-2017-2018-08-01_2017.csv
mv ddi-br-capes-btd-2017-2018-08-01_2017.csv capess.csv
iconv -f iso8859-1 -t ascii//translit capess.csv > capes.csv
rm capess.csv
