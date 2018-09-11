library(dplyr)
library(pacman)
library(ggplot2)
  
cadastrocivil <- read.csv2("/home/gudnunes/Área de Trabalho/Mineração de dados/MD2018/dados/cadastrocivil.csv", header = TRUE, sep = ";")
cadastrocivil <- select(cadastrocivil, c("NOME","SITUACAO_VINCULO","RG_EXERCICIO", "id_SERVIDOR_PORTAL", "FUNCAO","ORG_EXERCICIO", "DESCRICAO_CARGO", "CLASSE_CARGO","NIVEL_FUNCAO", "JORNADA_DE_TRABALHO", "ATIVIDADE", "UORG_LOTACAO", "ORG_LOTACAO", "SITUACAO_VINCULO", "DATA_INGRESSO_ORGAO", "UF_EXERCICIO"))
cadastrocivil$DESCRICAO_CARGO <- as.character(cadastrocivil$DESCRICAO_CARGO)
cadastrocivil$CLASSE_CARGO <- as.factor(cadastrocivil$CLASSE_CARGO)
cadastrocivil$ATIVIDADE <- as.character(cadastrocivil$ATIVIDADE)
cadastrocivil$UORG_LOTACAO <- as.character(cadastrocivil$UORG_LOTACAO)
cadastrocivil$DESCRICAO_CARGO <- as.character(cadastrocivil$DESCRICAO_CARGO)
cadastrocivil$ORG_LOTACAO <- as.character(cadastrocivil$ORG_LOTACAO)
cadastrocivil$SITUACAO_VINCULO <- as.factor(cadastrocivil$SIATUACAO_VINCULO)
cadastrocivil$DATA_INGRESSO_CARGOFUNCAO <- as.DA(cadastrocivil$DATA_INGRESSO_CARGOFUNCAO)
cadastrocivil$UF_EXERCICIO <- as.character(cadastrocivil$UF_EXERCICIO)





#transformar jornada para horas INT, para poder fazer média...

cadastro <- read.csv2("/home/gudnunes/Área de Trabalho/Mineração de dados/MD2018/dados/cadastrocivil.csv")
horario = rep(0, nrow(cadastro))
i = 1
for (aux in as.character(cadastro$JORNADA_DE_TRABALHO)) {
  
  if(aux == "12 HORAS SEMANAIS")
    horario[i]<-12
  
  if(aux == "18 HORAS SEMANAIS")
    horario[i]<-18
  
  if(aux == "20 HORAS SEMANAIS")
    horario[i]<-20
  
  if(aux == "22 H SEMANAIS JUD.")
    horario[i]<-22
  
  if(aux == "24 HORAS SEMANAIS")
    horario[i]<-24
  
  if(aux == "25 HORAS SEMANAIS")
    horario[i]<-25
  
  if(aux == "30 HORAS SEMANAIS")
    horario[i]<-30
  
  if(aux == "32,5 HORAS SEMANAIS")
    horario[i]<-32
  
  if(aux == "36 HORAS SEMANAIS")
    horario[i]<-36
  
  if(aux == "40 HORAS SEMANAIS")
    horario[i]<-40
  
  if(aux == "44 HORAS SEMANAIS")
    horario[i]<-44
  
  if(aux == "60 HORAS SEMANAIS")
    horario[i]<-60
  
  if(aux == "66 HORAS SEMANAIS")
    horario[i]<-66
  
  i = i + 1
  
}

