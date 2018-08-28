library(dplyr)
cssv <- read.csv("/home/knut/projetos/MD2018/dados/proposicoes-2018.csv", sep=";")
cssv <- tbl_df(cssv)
cssv <- select(cssv,c("id","ementa","ultimoStatus_descricaoTramitacao", "ultimoStatus_idOrgao"))
cssv$ultimoStatus_descricaoTramitacao<-as.character(cssv$ultimoStatus_descricaoTramitacao)

