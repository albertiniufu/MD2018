library(dplyr)


expulsoes <- read.csv("home/marcelokriiger/MD2018/Expulsoes.csv", to.data.frame = TRUE, header = TRUE, sep = ";")
expulsoes <- select(expulsoes, -c ("MATRICULA", "ORGAO DE LOTACAO", "UF LOTACAO", "NUMERO DE PORTARIA DE PUNICAO", "PAGINA", "SECAO", "NUMERO DO PROCESSO ADMINISTRATIVO"))
glimpse(expulsoes)

