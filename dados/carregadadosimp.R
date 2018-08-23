library(foreign)
library(dplyr)

impeachment <- read.spss("/home/gudnunes/Área de Trabalho/Mineração de dados/MD2018/dados/bd_vot_impeachment.sav", to.data.frame = TRUE, header = TRUE, sep= ";")
impeachment <- select(impeachment, -c("sit_cand_elei", "colig_elei", "votacao", "cod_tse_mun", "total_votos_mun", "perc_vot_mun", "hh", "migracao", "data_migr", "camissao", "indicacao_comiss", "condicao_comiss", "vota_comiss"))
impeachment$sexo <- as.factor(impeachment$sexo)
impeachment$indica_bancad <- as.factor(impeachment$indica_bancad)
impeachment$voto_impeach <- as.factor(impeachment$voto_impeach)
glimpse(impeachment)


