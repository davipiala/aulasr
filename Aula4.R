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


#Loop acumulado

class(AirPassengers)
summary(AirPassengers)
dim(AirPassengers)

AirPassengers
df <- data.frame(AirPassengers, year = trunc(time(AirPassengers)), month = month.abb[cycle(AirPassengers)])
df

df <- data.frame(date=as.Date(index(dat)), Y = melt(dat)$value)


vetor <- c(head(AirPassengers,500))

3 
tamanho = length(vetor)
aux = 1
vetor_mes <- c(1,2,3,4,5,6,7,8,9,10,11,12)
vetor_passageiros <- c(0,0,0,0,0,0,0,0,0,0,0,0)
length(vetor_passageiros)
for (i in AirPassengers){
  if(i %% 12 == 0){
    aux <- 1
  }
  vetor_passageiros[aux] <-  AirPassengers[aux] +   vetor_passageiros[aux]

  aux <- aux + 1
    
}
length(vetor_passageiros)
length(vetor_mes)
df = cbind(vetor_mes, vetor_passageiros)

df





fatorial <- function(n){
  indice = 1
  valor = 1
  while(indice <= n ){
    
    valor = indice * valor
    indice <- indice + 1
  }
  return(valor)
}

numeroInvertido <- function(vetor){
  vetor_invertido <- vetor
  indice_invertido = length(vetor)
  i = 1
  while(i <= length(vetor) ){
    
    vetor_invertido[indice_invertido] = vetor[i]
    i <- i + 1
    indice_invertido <- indice_invertido - 1
  }
  return(vetor_invertido)
}

numeroInvertido(c(1,2,3,4,5,6,7,8,9))


