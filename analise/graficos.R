require(pacman)
require(readr)
require(dplyr)
require(ggplot2)
require(quantreg)

expulsoes <- read.csv("/home/marcelokriiger/MD2018/dados/Expulsoes.csv", header = TRUE, sep = ";")
expulsoes <- select(expulsoes, -c ("MATRICULA", "ORGAO.DE.LOTACAO","NUMERO.DE.PORTARIA.DE.PUNICAO", "PAGINA", "SECAO", "NUMERO.DO.PROCESSO.ADMINISTRATIVO"))
expulsoes$CARGO.EFETIVO <- as.character(expulsoes$CARGO.EFETIVO)
expulsoes$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO <- lubridate::dmy(expulsoes$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO)
expulsoes$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO <- format(expulsoes$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO, format="%Y")

ano <- expulsoes %>% select("DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO")
ano$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO <- format(ano$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO, format="%Y")

mes <- expulsoes %>% select("DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO")
mes$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO <- lubridate::month(mes$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO)
mes$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO <- format(mes$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO, format="%m")


attach(expulsoes)

#Relacao da quantidade de expulsoes e dos tipos de punicoes por estados
ggplot(data = expulsoes)+geom_bar(mapping = aes(x = UF.LOTACAO, fill=TIPO.DE.PUNICAO))

#Relacao da quantidade de expulsoes e dos tipos de punicoes por ano
ggplot(data = ano)+geom_bar(mapping = aes(x = DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO, fill=TIPO.DE.PUNICAO))

