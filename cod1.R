#AULA 8 - Armazenamento Lógico

L1 <- salario > horas
L1

L2 <- salario < horas
L2

logico = "TRUE"
logico1 = TRUE
logico2 = c(10,TRUE,3)
logico2

#AULA 9 - Vetores
#Sequencia de dados do mesmo tipo.

is.vector(nomes)
mode(nomes)

#Aula 10 - Listas
#Vetor com tipos de dados diferentes

a <- c(1,2,3,4,5)
b <- c(1,"2",3,4,5)

is.list(a)
is.list(b)

b <- as.numeric(b)

b <- list(10,"2",3)
str(b)

e <- list(c(10,6,51,5),"2",8)
str(e)

#Mostrando valores da lista.
e[[1]][3]

#Aula 12 - Matrizes (Duas dimensões, dois tipos de dados)

m <- matrix(1:9, nrow = 3)
m
mode(m)
class(m)

#Acessando um dado específico;

m[1,3]
m[1,3] <- "a"
m

