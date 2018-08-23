wget http://www.gcpp.com.br/wp-content/uploads/2016/04/bd_vot_impeachment.zip -O i.zip
unzip i.zip
mv bd_vot_impeachment.sav impeachment.sav
iconv -f iso8859-1 -t ascii//trasnlit impeachment.sav > impeachment.tmp
mv impeachment.tmp impeachment.sav