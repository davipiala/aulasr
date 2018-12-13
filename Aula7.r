##LENDO ARQUIVO


setwd("C:\\pasta"")

getwd()

fifa <- read.csv(file="fifa.csv", header=TRUE, sep=",")
summary(fifa)

par(mfrow=c(2,2))

hist(fifa$dribbling)
hist(fifa$acceleration)

boxplot(fifa$dribbling)
boxplot(fifa$acceleration)

par(mfrow=c(1,2))
boxplot(fifa$dribbling  ~ fifa$prefers_gk)
boxplot(fifa$dribbling  ~ fifa$preferred_foot)

##CLUSTERIZAÇÃO
##AGRUPAMENTOS
##REFORçANDO o Scatter plot trabalha com duas dimensões
##EXISTEM CASO DE N DIMENSÕES

##PROCESSO PARA FAZER UMA CLUSTERIZACAO
##PASSO SELECAO DE CARACTERISTICA
##PASSO DEFINIR MEDIDAS DE SIMILARIDADE
##AGRUPAMENTO
##APRESENTACAO
##ESSE PROCESSO PODE TER VARIOS ETAPAS

##CLUSTERIZAR
##DEFINIR PROXIMO
##COMO AS OBSERVACOES SAO AGRUPADAS
##COMO VISUALIZAR OS AGRUPAMENTOS
##COMO INTERPRETAR OS AGRUPAMENTOS


##DISTANCIA EUCLIDIANA
##MENOR DISTANCIA ENTRE DOIS PONTOS
##DISTANCIA DE MANHATTAN
##SOMA DOS CATETOS


#NAO ExiSTE UMA TECNICA BALA DE PRATA PARA CLUSTERIZACAO
##K-MEANS -> K-MEDIAS
##MAPA DE CALOR -> HEATMAP
##DENDROGRAMA -> SEI LAH



