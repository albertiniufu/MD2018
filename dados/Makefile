
all:grupos-de-pesquisa.csv cessoes.csv

grupos-de-pesquisa.csv: loadGruposDePesquisa.R downloadGruposDePesquisa.sh
				bash downloadGruposDePesquisa.sh
				
cessoes.csv: loadCessoes.R downloadCessoes.sh
				bash downloadCessoes.sh