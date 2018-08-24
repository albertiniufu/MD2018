dados <- read.csv("dados/dados.csv")
dados <- tbl_df(dados)
dados$customerID <- as.character(dados$customerID)