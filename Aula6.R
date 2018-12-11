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
