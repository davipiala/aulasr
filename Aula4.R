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
sample(x = amostra, size =10, replace = TRUE, prob = c(1,1,5,1,1,1,1,1,1,5))
