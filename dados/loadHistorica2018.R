require(dplyr)

p_load(dplyr)

orcamentaria <- tbl_df(read.csv("./dados/historica2018ascii.csv"))

orcamentaria <- rename(orcamentaria, `Empenho2000`= `Empenhado_2000..R..milhoes.`)
#Transformações 

orcamentaria$Empenhado_2000..R..milhões. <- as.numeric(orcamentaria$Empenhado_2000..R..milhões.)

orcamentaria$Empenhado_2001..R..milhões. <- as.numeric(orcamentaria$Empenhado_2001..R..milhões.)

orcamentaria$Empenhado_2002..R..milhões. <- as.numeric(orcamentaria$Empenhado_2002..R..milhões.)

orcamentaria$Empenhado_2003..R..milhões. <- as.numeric(orcamentaria$Empenhado_2003..R..milhões.)

orcamentaria$Empenhado_2004..R..milhões. <- as.numeric(orcamentaria$Empenhado_2004..R..milhões.)

orcamentaria$Empenhado_2005..R..milhões. <- as.numeric(orcamentaria$Empenhado_2005..R..milhões.)

orcamentaria$Empenhado_2006..R..milhões. <- as.numeric(orcamentaria$Empenhado_2006..R..milhões.)

orcamentaria$Empenhado_2007..R..milhões. <- as.numeric(orcamentaria$Empenhado_2007..R..milhões.)

orcamentaria$Empenhado_2008..R..milhões. <- as.numeric(orcamentaria$Empenhado_2008..R..milhões.)

orcamentaria$Empenhado_2009..R..milhões. <- as.numeric(orcamentaria$Empenhado_2009..R..milhões.)

orcamentaria$Empenhado_2010..R..milhões. <- as.numeric(orcamentaria$Empenhado_2010..R..milhões.)

orcamentaria$Empenhado_2011..R..milhões. <- as.numeric(orcamentaria$Empenhado_2011..R..milhões.)

orcamentaria$Empenhado_2012..R..milhões. <- as.numeric(orcamentaria$Empenhado_2012..R..milhões.)

orcamentaria$Empenhado_2013..R..milhões. <- as.numeric(orcamentaria$Empenhado_2013..R..milhões.)

orcamentaria$Empenhado_2014..R..milhões. <- as.numeric(orcamentaria$Empenhado_2014..R..milhões.)

orcamentaria$Empenhado_2015..R..milhões. <- as.numeric(orcamentaria$Empenhado_2015..R..milhões.)

orcamentaria$Empenhado_2016..R..milhões. <- as.numeric(orcamentaria$Empenhado_2016..R..milhões.)

orcamentaria$Empenhado_2017..R..milhões. <- as.numeric(orcamentaria$Empenhado_2017..R..milhões.)

orcamentaria$dotação.atualizada..R..milhões. <- as.numeric(orcamentaria$dotação.atualizada..R..milhões.)

orcamentaria$Empenhado..R..milhões. <- as.numeric(orcamentaria$Empenhado..R..milhões.)