

##DENDROGRAMA
##UM TIPO DE GRAFIcO
##AGRUPAMENTO HIERARQUICO

##CLUSTERIZACAO HIERARQUICA ASCENDENTE


##INDICADO PARA POPULACAO MENORES
##MAS JA FOI USADO PARA DATASETS GIGANTESCOS


##EM CLUSTERIZACOES A DISTANCIA EH FUNDAMENTAL

##ENTRE DOIS ELEMENTOS HA SEMPRE UM PONTO DE MASSA


##A MEDIDA DE SIMILARIDADE EH QUE DEFINE A QTD DE CLUSTERS
##ELA ATUA COMO NOTA/LINHA DE CORTE

library(plotly)
set.seed(1909)
x <- rnorm(n=15, mean=rep(1:3, each=5), sd=0.2 )
y <- rnorm(n=15, mean=rep(c(1:2), each=5), sd=0.2 )

mydata <- data.frame("X" <- x, "Y" <- y)

dist(mydata[1:7,])
dist(mydata[1:7,], method="manhattan")


modelo.hc <- hclust(dist(mydata))
modelo.dendro <- as.dendrogram(modelo.hc)

plot_dendro(modelo.dendro, xmin = -0.05)

plot(modelo.hc, main="Dendograma", xlab="Observações", sub="", ylab="Distância")






plot_ly(data = modelo.hc,
        x = ~, y = ~acceleration, z = ~long_passing,
        type = 'dendogram', mode ='markers')



#SVM eh muito bom para classificar quando tem duas dimensões
#PCA - PRINCIPAIS COMPONENTES DE ANALISE
#TECNICA DE AUTOVETOR (O VETOR QUE MAIS TENTA REPRODUZIR OQ ESTA EM UMA MATRIZ)

#MIRE CHOI

##MATRIZ DE CONFUSAO
##ACURACIA

          RESPOSTA CORRETA

P         POSITIVO NEGATIVO
R
E  POSITIVO VERDADEIRO   FALSO
D             POSITIVO    POSITIVO
I
T  NEGATIVO  FALSO     VERDADEIRO
O             NEGATIVO   NEGATIVO



Acuracia
Total de Acertos / População

Sensibilidade

Acertos Positivos / Total de positivos

Especificidade Acertos Negativos / Total Negativos


Eficiencia  Sensibilidade + Especificidade
                        2
                        
Recall Qdo deu Ruim

Tecnicas SVM, Naive Bayes, Regressao, Redes Neurais, Arvoes de Regressao,
Random Forest


Pacote caret

Classificacao e Regressao

237 modelos

Um conjunto de modelos muito util, tem uma fachada para usar varios modelos


Arvores e Floresta
##DATASET FAMOSO CHAMADO IRIS
##ARVORES DE DECISAO - ID3, C4.5, Cart
##EH POSSIVEL DEFINIR O NIVEL MAXIMO DA PROFUNDIDADE DA ARVORE
##PASSOS DO ID3
##CRESCIMENTO, ANALISE e PODA

##E POSSIVEL ATEH PLOTAR O MODELO 


##RANDOM FOREST
##GERA UM MONTE DE ARVORES E POE ELAS PRA CONCORRER.



