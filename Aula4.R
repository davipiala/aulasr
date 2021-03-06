##VISTO NA AULA ANTERIOR
#vimos opera��es com dataframe
#Multiplicacao de matrizes existem dois tipos
#elemento por elemento
#E matriz x Matriz

#Como o numero aleatorio deriva do ultimo gerado
#isso funciona por sess�o
#Em alguns casos � extremamente importante manter a semente gerada
#para que a simula��o bata exatamente

#Distribu��o normal

#Distribui��o Binomial
#Outra t�cnica de colocar ru�do em uma distrui��o

#Distribui��o Uniforme
#Todos os n�meros tem a mesma probabilidade de acontecer
#runif obter numeros seguindo uma distribuicao uniforme a partir de min at� um max
#dunif
#punif

#Comando sample
#Amostras a partir de um dom�nio

set.seed(1)
amostra = c("T", "R", "I", "A", "N", "G", "U", "L", "O", "S")
sample(x = amostra, replace = FALSE)
sample(x = amostra, replace = TRUE)

sample(x = amostra, size =5)
#PROBABILIDADE 
sample(x = amostra, size =10, replace = TRUE, prob = c(1,1,5,1,1,1,1,1,1,5))


#Desvio padr�o default para distribui��o normal � 1, a m�dia padr�o � 0


#HISTOGRAMA 
#Um histograma dita a ocorr�ncia de um determinado n�mero em seu gr�fico

#summary funciona em tabelas e vetores

#Gerar numeros dentro da sequencia dentro de um certa quantidade.
seq(from=-5, to=5, length.out=1000)

#Distrui��o exata
#Distribui��o acumulada
#Dimens�es
dim(airquality)

#RESUMO
summary(airquality)

#10 primeiras linhas
head(airquality,10)

#exibir uma com 10 linhas aleat�rias

linhasFiltro <- sample(x = nrow(airquality),size =10, replace = FALSE)


airquality[linhasFiltro,]

##Outras resolu��es podem ir com dim(airqualit)[1], seql_along(airquality$wind)


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




#FUNCAO DE FATORIAL
fatorial <- function(n){
  indice = 1
  valor = 1
  while(indice <= n ){
    
    valor = indice * valor
    indice <- indice + 1
  }
  return(valor)
}

#FUNCAO DE INVERTER VALORES
inverte <- function(vetor){
  vetor_invertido <- NULL
  indice_invertido = length(vetor)
  i = 1
  while(i <= length(vetor) ){
    
    vetor_invertido[indice_invertido] = vetor[i]
    i <- i + 1
    indice_invertido <- indice_invertido - 1
  }
  return(vetor_invertido)
}

inv2 <- function(vet){
  vet[length(vet):1]
}

##Minha solucao

acumular <- function(vet){
  vetor_acumulado <- NULL
  acumulado <- 0 
  i <- 1
  while(i <= length(vet) ){
    acumulado <- vet[i]  + acumulado
    vetor_acumulado[i] <- acumulado
    i <- i + 1
  }
  return(vetor_acumulado)
    
}

#Solucao do professor

acumularProfessor <- function(entrada){
  valorAc <-0
  saida <- NULL
  for(j in entrada){
    valorAc <- valorAc + j
    saida <- c(saida, valorAc)
  }
  return(saida)
}


inverte(c(1,2,3,4,5,6,7,8,9))
inv2(c(1,2,3,4,5,6,7,8,9))
vet <- c(1,2,3,4,5,6,7,8,9)
vet[length(vet):1]
AirPassengers
acumular(AirPassengers)
acumular(mtcars$mpg)
acumularProfessor(mtcars$mpg)

