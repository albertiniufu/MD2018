library(foreign)

impeachment <- read.spss("MD2018//impeachment.sav", to.data.frame = TRUE, header = TRUE, sep= ";")
impeachment <- select(impeachment, -c("sit_cand_elei", "colig_elei", "votacao", "cod_tse_mun", "total_votos_mun", "perc_vot_mun", "hh", "migracao", "data_migr", "comissao", "indicacao_comiss", "codicao_comiss", "vota_comiss"))
impeachment$sexo <- as.factor(impeachment$sexo)
impeachment$indica_bancad <- as.factor(impeachment$indica_bancad)
impeachment$voto_impeach <- as.factor(impeachment$voto_impeach)
glimpse(impeachment)


