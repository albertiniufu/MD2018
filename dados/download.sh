wget http://www.portaltransparencia.gov.br/download-de-dados/servidores/201801_Servidores -O cad.zip
unzip cad.zip
mv 20180131_Cadastro.csv cadastrocivil.csv
iconv -f iso8859-1 -t ascii//trasnlit cadastrocivil.csv > cadastrocivil.tmp
mv cadastrocivil.tmp cadastrocivil.csv

mv 20180131_Remuneracao.csv Remuneracao.csv
iconv -f iso8859-1 -t ascii//translit Remuneracao.csv > Remuneracao.tmp
mv Remuneracao.tmp Remuneracao.csv

