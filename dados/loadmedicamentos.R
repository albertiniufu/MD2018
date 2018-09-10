medicamentos <- read.csv2("dados/medicamentos_data.csv", sep = ';')

require(dplyr)

medicamentos <- tbl_df(medicamentos)

View(medicamentos)

medicamentos$ST_CONFAZ87 <- c()
medicamentos$ST_CAP <- c()
medicamentos$ST_REST_HOSP <- c()
medicamentos$TP_LCCT <- c()
medicamentos$CO_GGREM <- c()
medicamentos$CO_EAN <- c()

medicamentos$NO_RAZAO_SOCIAL <- as.character(medicamentos$NO_RAZAO_SOCIAL)
medicamentos$NU_REGISTRO <- as.character.factor(medicamentos$NU_REGISTRO)
medicamentos$NO_PRODUTO <- as.character(medicamentos$NO_PRODUTO)
medicamentos$DS_APRESENTACAO <- as.character.factor(medicamentos$DS_APRESENTACAO)
medicamentos$DS_SUBSTANCIA <- as.character(medicamentos$DS_SUBSTANCIA)


#medicamentos <- select
