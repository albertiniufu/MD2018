library(dplyr)


expulsoes <- read.csv("/home/marcelokriiger/MD2018/dados/Expulsoes.csv", header = TRUE, sep = ";")
expulsoes <- select(expulsoes, -c ("MATRICULA", "ORGAO.DE.LOTACAO","UF.LOTACAO","NUMERO.DE.PORTARIA.DE.PUNICAO", "PAGINA", "SECAO", "NUMERO.DO.PROCESSO.ADMINISTRATIVO"))
expulsoes$CARGO.EFETIVO <- as.character(expulsoes$CARGO.EFETIVO)
glimpse(expulsoes)


