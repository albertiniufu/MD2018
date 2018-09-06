require(pacman)
require(readr)
require(dplyr)
require(ggplot2)
require(quantreg)


ano <- expulsoes %>% select("DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO")
ano$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO <- format(ano$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO, format="%Y")

mes <- expulsoes %>% select("DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO")
mes$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO <- lubridate::month(mes$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO)
mes$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO <- format(mes$DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO, format="%m")


attach(expulsoes)

#Relacao da quantidade de expulsoes e dos tipos de punicoes por estados
ggplot(data = expulsoes)+geom_bar(mapping = aes(x = UF.LOTACAO, fill=TIPO.DE.PUNICAO))

#Relacao da quantidade de expulsoes e dos tipos de punicoes por ano
ggplot(data = ano)+geom_bar(mapping = aes(x = DATA.DE.PUBLICACAO.DA.PORTARIA.DE.PUNICAO, fill=TIPO.DE.PUNICAO))+ylim(0,600)

