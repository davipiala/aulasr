##VISTO NA AULA ANTERIOR
#vimos operações com dataframe
#Multiplicacao de matrizes existem dois tipos
#elemento por elemento
#E matriz x Matriz

#Como o numero aleatorio deriva do ultimo gerado
#isso funciona por sessão
#Em alguns casos é extremamente importante manter a semente gerada
#para que a simulação bata exatamente

#Distribução normal

#Distribuição Binomial
#Outra técnica de colocar ruído em uma distruição

#Distribuição Uniforme
#Todos os números tem a mesma probabilidade de acontecer
#runif obter numeros seguindo uma distribuicao uniforme a partir de min até um max
#dunif
#punif

#Comando sample
#Amostras a partir de um domínio

set.seed(1)
amostra = c("T", "R", "I", "A", "N", "G", "U", "L", "O", "S")
sample(x = amostra, replace = FALSE)
sample(x = amostra, replace = TRUE)

sample(x = amostra, size =5)
#PROBABILIDADE 
sample(x = amostra, size =10, replace = TRUE, prob = c(1,1,5,1,1,1,1,1,1,5))


#Desvio padrão default para distribuição normal é 1, a média padrão é 0


#HISTOGRAMA 
#Um histograma dita a ocorrência de um determinado número em seu gráfico

#summary funciona em tabelas e vetores

#Gerar numeros dentro da sequencia dentro de um certa quantidade.
seq(from=-5, to=5, length.out=1000)

#Distruição exata
#Distribuição acumulada
#Dimensões
dim(airquality)

#RESUMO
summary(airquality)

#10 primeiras linhas
head(airquality,10)

#exibir uma com 10 linhas aleatórias

linhasFiltro <- sample(x = nrow(airquality),size =10, replace = FALSE)


airquality[linhasFiltro,]

##Outras resoluções podem ir com dim(airqualit)[1], seql_along(airquality$wind)




