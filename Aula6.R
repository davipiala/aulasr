##Gráficos
##Graficos podem suportar na analise inicial do dataset
##é possível avaliar distribuições, correlações e agrupamentos
##Abiscissas(linha vertical, y), ordenadas (linha horizontal, x)
## Quadrantes
##    1 | 2
##    -----
##    3 | 4
## Principais pacotes para plotagem -> Base Plot, Lattice, ggplot2, plotly, plot3D
## Plotly possui versão para python, matlab, node.js e etc..

x <- -10:10
plot (x <- x, y <- x**2, main = 'Parabola')

##plot é uma abreviação de scatterplot

x <- -10:10
plot (x <- x, y <- x**2, main = 'Parabola', type <- 'l') ##linha continua
plot (x <- x, y <- x**2, main = 'Parabola', type <- 'p') ## pontos
plot (x <- x, y <- x**2, main = 'Parabola', type <- 'b') ## linhas mais pontos
plot (x <- x, y <- x**2, main = 'Parabola', type <- 'o') ## linhas mais pontos com corte
plot (x <- x, y <- x**2, main = 'Parabola', type <- 'h') ## histograma
plot (x <- x, y <- x**2, main = 'Parabola', type <- 's') ## STEPS - DEGRAU
plot (x <- x, y <- x**2, main = 'Parabola', type <- 'S') ## STEPS - DEGRAU


head(cars)
summary(cars)
##PLOT PADRAO é o de bolinhas
plot(cars)
plot(mtcars[,1:1])
points(1:100, 1:100, col="red")
text(x=1:100, y=2:101, labels="A", col="green")

head(cars)
summary(cars)


##Calcular a regressão linear
##Uma variavel do eixo y depende de uma do eixo x
##Equação geral da reta
## E(Y) = B0 + B1X
## B1 -> coeficiente angular
## B0 -> intercepto populacional
## Erro Aleatório -> São os pontos fora da reta... tantos os de cima quanto os debaixo
## darão zero


plot(cars)
points(1:100, 1:100, col="red")

##Existe uma função chamada abline, ela plota uma linha de tendencia
##para regressão linear

plot(mtcars[,c(1,3)])
abline(lm(mtcars[,c(3)] ~mtcars[,c(1)]))

## HISTOGRAMA -> frequencia a partir de uma unica variavel

hist(-10:10)
## BOXPLOT, ajuda a avaliar várias séries de dimensões diferentes

summary(airquality)
boxplot(airquality)
library("dplyr")

ds1 <- airquality %>% filter(month==5) %>% select(Ozone) %>% arrange(Ozone) 


ds <- sort(subset(airquality, airquality$Month == 5)$Ozone)

class(ds)

plot(ds)
menor_valor <- min(ds)
maior_valor <- max(ds)
media_valor <- mean (ds)
quartis <- quantile(ds, c(0.25, 0.5, 0.75), type = 1)
quartis
lines(c(0,30), c(menor_valor,menor_valor),col="blue")
lines(c(0,30), c(maior_valor,maior_valor),col="blue")
lines(c(0,30), c(media_valor,media_valor),col="red")
lines(c(0,30), c(quartis[1],quartis[1]),col="blue")
lines(c(0,30), c(quartis[3],quartis[3]),col="blue")

summary(ds)
median(ds)




##(x0,x1) (y0,y1)




mes5 <- c(subset(airquality, airquality$Month == 5)$Ozone,  rep(NA, 31- length(mes5) ))
mes6 <- c(subset(airquality, airquality$Month == 6)$Ozone,  rep(NA, 31- length(mes6) ))
mes7 <- c(subset(airquality, airquality$Month == 7)$Ozone,  rep(NA, 31- length(mes7)))
mes8 <- c(subset(airquality, airquality$Month == 8)$Ozone,  rep(NA, 31- length(mes8)))
mes9 <- c(subset(airquality, airquality$Month == 9)$Ozone,  rep(NA, 31- length(mes9)))
length(mes5)
length(mes6)
length(mes7)
length(mes8)
length(mes9)


df <- data.frame("5" <- mes5, "6" <- mes6, "7" <- mes7, "8" <- mes8, "9" <- mes9)


boxplot(df)

##METODO INTELIGENTE
library("dplyr")
airquality %>%
select(Month, Ozone) -> meuplot 
boxplot(meuplot$Ozone ~ meuplot$Month)






boxplot(airquality$Ozone ~ airquality$Month, data <- airquality)
boxplot(airquality$Wind ~ airquality$Month, data <- airquality)
boxplot(airquality$Temp ~ airquality$Month, data <- airquality)
boxplot(airquality$Solar.R ~ airquality$Month, data <- airquality)

##COLOCAR VARIOS GRAFICOS NA MESMA DASHBOARD
## LINHAS, COLUNAS
par(mfrow=c(1,3))
hist(trees$Girth)
hist(trees$Height)
hist(trees$Volume)

par(mfrow=c(1,1))

airquality %>%
  select(Ozone, Wind) -> relacao 
plot(relacao)

abline(lm(airquality$Wind ~ airquality$Ozone), col="red")


airquality %>%
  select(Wind, Ozone ) -> relacao 
plot(relacao)

abline(lm(airquality$Ozone ~ airquality$Wind), col="red")

