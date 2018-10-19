##################
# R Source code file used to download data file " "
# Created by Christopher Gandrud
# Updated 1 May 2013
##################

URL_DATAFILE="http://homolog-dados.mma.gov.br/pt_BR/dataset/ffd9ab35-5719-4ec1-8d13-ae8f738bebc2/resource/ce81bb79-1f8d-430d-b164-455b0e022382/download/pf_certificacao_pefc_2005-2017.csv"
FILENAME <- "dados/pf_certificacao_pefc_2005-2017.csv"
if (file.exists(FILENAME) == FALSE) {
  download.file(URL_DATAFILE, destfile=FILENAME)
}




