library(dplyr, warn.conflicts=F)

despesas <- read.csv("../dados/despesas-2017.csv", sep=";", dec=",", header=T)
despesas <- tbl_df(despesas)

despesas <- select(despesas, txNomeParlamentar, sgUF, sgPartido, datEmissao, txtDescricao, vlrDocumento)

despesas$txNomeParlamentar <- as.character(despesas$txNomeParlamentar)
despesas$datEmissao <- as.Date(as.character(despesas$datEmissao), "%Y-%m-%d")
despesas$txtDescricao <- as.character(despesas$txtDescricao)
