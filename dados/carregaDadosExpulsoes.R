library(dplyr)
library(readr)


expulsoes <- read.csv("/home/marcelokriiger/MD2018/dados/Expulsoes.csv", header = TRUE, sep = ";")
expulsoes <- select(expulsoes, -c ("MATRICULA", "ORGAO.DE.LOTACAO","NUMERO.DE.PORTARIA.DE.PUNICAO", "PAGINA", "SECAO", "NUMERO.DO.PROCESSO.ADMINISTRATIVO"))
expulsoes$CARGO.EFETIVO <- as.character(expulsoes$CARGO.EFETIVO)
expulsoes$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO <- lubridate::dmy(expulsoes$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO)
expulsoes$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO <- format(expulsoes$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO, format="%d/%m/%y")
glimpse(expulsoes)

