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
sample(x = amostra, size =10, replace = TRUE, prob = c(1,1,5,1,1,1,1,1,1,5))