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

##K MEANS -> EH MUITO ANTIGA, MAIS VELHO QUE UM COMPUTADOR
##MUITO UTIL 
##SUMARIZA GRANDES VOLUMES DE DADOS

##PASSOS
##DETERMINAR O NUMERO DE CLUSTER
##DETERMINAR UM CENTROIDE PARA O CLUSTER
##ASSOCIAR CADA UMA DA OBSERVACAO AO CENTROIDE MAIS PROXIMO
##RECALCULAR O CENTROIDE

library(plotly)
par(mfrow=c(1,1))

set.seed(1909)
x <- rnorm(n=15, mean=rep(1:3, each=5), sd=0.2 )
y <- rnorm(n=15, mean=rep(c(1:2), each=5), sd=0.2 )
plot(x,y,col="blue",pch=19,cex=1)
text(x+0.05,y+0.05, labels = as.character(1:15))

mydata <- data.frame("X" <- x, "Y" <- y)
mydata
modelo <- kmeans(x <- mydata, centers <- 3)
plot(x,y,col <- modelo$cluster,pch<-19, cex2 <-2)

points(modelo$centers, col<- 1:3, pch <-3, cex <-3, lwd <- 2)



##FILTRO
 fifa %>% filter(league=="Spanish Primera División") %>% 
  select (name,  acceleration, dribbling) -> spain.2d


plot(spain.2d[,-1])


##MODELO
set.seed(2)
modelo.fifa <- kmeans(x= spain.2d[,-1], centers <- 4)
plot(spain.2d[,-1], col = modelo.fifa$cluster, pch =  21, cex= 1)
points(modelo.fifa$centers, col=4:1 , bg=1:4, pch=24, cex=1, lwd=1)



##FILTRO2
fifa %>% filter(league=="Spanish Primera División") %>% 
  select (name,  acceleration, dribbling, long_passing) -> spain.3d


plot(spain.3d[,-1])


##MODELO
set.seed(2)
modelo.fifa <- kmeans(x= spain.3d[,-1], centers <- 4)
plot(spain.3d[,-1], col = modelo.fifa$cluster, pch =  21, cex= 1)
points(modelo.fifa$centers, col=4:1 , bg=1:4, pch=24, cex=1, lwd=1)


##FILTRO
fifa$league
liga_espanha_ <- fifa %>% filter(league=="Spanish Primera División") %>% 
  select ( acceleration, dribbling, long_passing)
##MEDIDA TOTSS
##TOTSS -> SOMA QUADRATICA TOTAL
##DE UM PONTO PARA O OUTRO VAI EXISTIR UMA DISTANCIA, COMO ESTA DEFAULT SERA EUCLIDIANA
##CADA PONTO EH MEDIDO A DISTANCIA PARA CADA UM DOS OUTROS PONTOS
##O TOTSS NAO MUDA NUNCA PARA CADA CLUSTERIZACAO
##MOSTRA CONCENTRACAO E DISPERSAO

##MEDIDA WITHINISS

##DISTANCIA DE TODOS OS PONTOS PARA TODOS OS PONTOS DE DENTRO DE UM CLUSTER
#
##BETWEENSS 

##DISTANCIA QUADRATICA DE TODOS OS PONTOS PARA OS DEMAIS CENTROIDES DOS OUTROS CLUSTER
##O KMEANS PARA EM CIMA DE UMA RAZAO, UM CRITERIO DE PARADA

##BETWEENS DIVIDIDO POR TOTSS
##UMA RAZAO PARA INDICAR A PARADA DO KMEANS

##EXISTEM TECNICAS MATEMATICAS PARA DETERMINAR O NUMERO DE CLUSTER
##QUANDO VC TEM UM CLUSTER SO 1,  BETWEENESS EH IGUAL A 0
##QUANDO VC TEM O NUMERO DE CLUSTER IGUAL AO NUMERO DE ELEMENTOS ELE EH 1
##SE VC PLOTAR EM UM GRAFICO VC IRA PERCEBER UMA CURVA
##O VALOR A SER USADO EH AQUELE PROXIMO DA CURVATURA, ESSA CURVATURA OCORRE SE VC PLOTAR EM UM GRAFICO


#ALTERNATIVA AO KMEANS
#KMEDOIDES
#KMEANS NAO EH DETERMINISTICO
#KMEDOIDES EH DETERMINISTICO

#MINIMIZA A SOMA DAS DISTANCIAS, 
#A CHAMADA DO KAMEDOIDE 
##EH pam(PARAMETRO)
plot_ly(data = spain.2d,
        x = ~dribbling, y = ~acceleration,
        text = ~name,
        type = 'scatter', mode ='markers')


plot(spain.2d[,-1], col = modelo.fifa$cluster, pch =  21, cex= 1)

spain.2d %>% mutate(cluster = modelo.fifa$cluster) %>%
plot_ly(data = .,
        x = ~dribbling, y = ~acceleration,
        text = ~name, color = ~cluster,
        type = 'scatter', mode ='markers')



spain.3d %>% mutate(cluster = modelo.fifa$cluster) %>%
  plot_ly(data = .,
          x = ~dribbling, y = ~acceleration, z = ~long_passing,
          text = ~name, color = ~cluster,
          type = 'scatter3d', mode ='markers')

