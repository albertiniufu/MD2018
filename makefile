all: Expulsoes.csv

Expulsoes.csv: download.sh
	bash download.sh