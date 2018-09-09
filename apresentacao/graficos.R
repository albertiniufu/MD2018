
#Transformando para Tabela para fazer os 
#graficos com a variavel Unidade e despesa Orçamentaria(Factor).

unidade <- table(orcamentaria$Unidade.Orçamentária)

despesa <- table(orcamentaria$Grupo.de.Natureza.e.Despesa)

# Grafico 1 (Barras)
barplot(unidade[order(unidade)], horiz=TRUE, las=1, 
        col=rainbow (length(unidade)),border = NA,
        main = "Unidade Orçamentaria por Grupo de Despesas"
        , xlab = "Numero de despesas de cada Unidade")

# Gráfico 2 (Pizza)
pie(unidade[order(unidade, decreasing = T)], 
    col= topo.colors(length(unidade)), border = NA)



# Gráfico 3 (Barras)
barplot(despesa[order(despesa)], horiz=TRUE, las=1, 
        col=topo.colors (length(despesa)),border = NA,
        main = "Grupo de despesas por unidade orcamentaria"
        , xlab = "Numero de despesas de cada Unidade")

#Gráfico 4 (Pizza)
pie(despesa[order(despesa)], 
    col= rainbow(length(despesa)), border = NA)