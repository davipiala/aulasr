#Exercício 1
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
#Operações com matrizes


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


