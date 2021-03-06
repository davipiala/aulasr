#Exerc�cio 1
#Criar 6 vetores

a <- c(332723, 19830329, 936, 544385, 8612) 
b <- c(332723, 19830329, 936, 544385, 8612) * 2
c <- c(332723, 19830329, 936, 544385, 8612) / 3
d <- c + a**2
e <- sqrt(d)
ai <- a
ai[1] <- a[5]
ai[2] <- a[4]
ai[3] <- a[3]
ai[4] <- a[2]
ai[5] <- a[1]

print("Vetor a")
print(a)
print("Vetor b")
print(b)
print("Vetor c")
print(c)
print("Vetor d")
print(d)
print("Vetor e")
print(e)
print("Vetor ai")
print(ai)

#Exercicios 2
#Matrizes

l <- c(a,b,c,d,e,ai)
m1 <- matrix(data = l, nrow = 6, ncol = 5, byrow = TRUE,
             dimnames = NULL)

print(m1)
m2 <- matrix(data = l, nrow = 5, ncol = 6, byrow = FALSE,
             dimnames = NULL)
print(m2)

m3 <- m1 * 0.1
print(m3)

class(attitude)
print(attitude)
dim(attitude)

m4 <- matrix(data = as.matrix(attitude),nrow = 5,  ncol = 6 )
print(m4)

#Exercicio 3
#Matrizes

vetor <- c(1,2)
matriz <- matrix(data = vetor, nrow = 19, ncol = 19, byrow = TRUE,
                 dimnames = NULL)

print(matriz)

matriz2 <- matriz -1

print(matriz2)



matriz3 <- matriz2 + c(1:19)
print(matriz3)

#Exercicios 4
#Opera��es com matrizes


m5 <- m1 * m3
m6 <- m3 * m1
m7 <- m1 %*% m4
class(m7)
m8 <- m4 %*% m1
class(m7)
print(m4)
print(m5)

print(m7)
print(m8)
m5 == m6
m7 == m8



m1t <- t(m1)
m1
m1t


m2t <- t(m2)
m2
m2t

m3t <- t(m3)
m3
m3t

m4t <- t(m4)
m4
m4t

m5t <- t(m5)
m5
m5t


m6t <- t(m6)
m6
m6t

m7t <- t(m7)
m7
m7t


m8t <- t(m8)
m8
m8t

v <- 1:10
diag(1:10)

#Matriz identidade � uma matriz de diagonal 1
#Existem matrizes diagonais
#para criar uma matriz identidade � s� usar o diag
#qq matriz multiplicada por uma identidade � igual a ela mesma
#para calcular uma matriz inversa � s� descobrir qual a matriz multiplicada
#por a matriz inversa d� como resultado a matriz identidade
#a fun��o solve obtem a matriz inversa de uma matriz qq

solve(m1)
solve(m2)
solve(m3)
solve(m4)
solve(m5)
solve(m6)
solve(m7)
solve(m8)
#somente matrizes quadradas tem matrizes inversas, h� matrizes quadradas
#que possuem mais de uma matriz inversa
#

#FATORES s�o dados categoricos, tipo codigos SOLTEIRO, CASADO

head(BrFlights2,5)
BrFlights2$Situacao.Voo <- as.factor(BrFlights2$Situacao.Voo)
class(BrFlights2$Situacao.Voo)

head(BrFlights2,5)


#Calculo do atraso
BrFlights2$atraso <- BrFlights2$Chegada.Prevista - BrFlights2$Chegada.Real
BrFlights2$atrasoPartida <- BrFlights2$Partida.Prevista - BrFlights2$Partida.Real

head(BrFlights2,5)

#Calculo da distancia
BrFlights2$distancia <- sqrt(((BrFlights2$LatOrig - BrFlights2$LatDest)**2)  + ((BrFlights2$LongOrig - BrFlights2$LongDest)**2))

#Media Atraso Partida
mean(BrFlights2$atrasoPartida)
quarters(BrFlights2$atrasoPartida,1)

#Tempo real de viagem
BrFlights2$tempoViagemReal <- BrFlights2$Chegada.Real - BrFlights2$Partida.Real

#Resumo da tabela
summary(BrFlights2$atraso)
#Maior Atraso Medio - Companhia


#soma dos catetos � conhecido como distancia de manhattam
#Media de atraso de partida
library(dplyr)

Companhias <- BrFlights2 %>%
select(Companhia.Aerea, atrasoPartida) %>%
group_by(Companhia.Aerea) %>%
summarise(atrasoPartida = mean(atrasoPartida))

Companhias

#Simula��o de dados do cliente

#Familia normal, fun��o da distribui��o normal
#Fun��o Gaussiana
#1 desvio padrao 66 por cento 
#2 desvido padr�o 90 por cento
#3 desvio padr�o 99 por cento

#gera numero aleatorios, 
rnorm(1)

#Modelo linear perfeito
#Pode ser traduzido em uma frase como
#Na media meu produto � 10% mais caro que do meu concorrente
#RUIDO dado real

#OUTLIERS fora da tendencia

#nota��o da fun��o normal x~N(0;1�)
#nota��o da fun��o normal x~N(0;1�)
#~ aproximadamente

library(plotly)
eixo_x <- rnorm(n=100, sd=1, mean=0 )
e <- rnorm(n=100, sd=2, mean=0 )

eixo_y <-  0.5 + 2 * eixo_x + e

plot_ly( x = eixo_x, y = eixo_y, type = "scatter" )

#Existe tamb�m a distribui��o uniforme



