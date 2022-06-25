#comentando

#ctrl + l --> Limpa o console. 

#O sinal <- é utilizado na criação de variáveis, já o sinal de = nas atribuições de funções.

a <- "Victor"
b <- "Maria"

#O primeiro 'c' é a variável e o segundo 'c' é a função.
c <- c(a,b)
c

#Interrogação leva ao help.
?c

#O indice começa no 1.
c[1]

#Função summary mostra alguns detalhes sobre a função citada.
#Utilização importante para valores numéricos.
d <- c(1,5,6,10)
summary(d)

?str_C

install.packages("stringr")
library(stringr)

?str_c

nome <- "Victor"
otonome <- "Hugo"
NomeCompleto <- str_c(nome, otonome)
NomeCompleto <- str_c(nome," ",otonome)

#AULA 4 - Operações Matemáticas.

#soma
5+5

#subtração
5-3

#divisão
9/2

#multiplicação
5*3

#potencia
2**2

#igual
5==6

#diferente
5!=6

#Maior
54>5

#Menor
2<6

#Maior ou Igual
5>=6

#menor ou igual
5<=5

#Operador 'e'
6==6 & 7==8

#operador 'ou'
6==1 | 1<3

#negação
!6==6

#Aula 5 - Tipos de Dados

#armazenamento númerico
salario <- 1750
horas <- 11

sh <- salario/horas
#Valor inteiro
smi <- as.integer(salario/horas)
#Valor arredondado.
smr <- round(salario/horas)

#Aula 6 - Armazenamento de Caracteres

nome1 <- "Victor Hugo"
nome2 <- "Maria Lyandra"
idade <- "18"
nomes <- c(nome1,nome2)
nomes
nomes[1]
nomes[2]

#Aula 7 - Armazenamento de fatores.
choraria = c(220,220,200,200,62)
summary(choraria)

choraria <- as.factor(choraria)
summary(choraria)
mode(choraria)
class(choraria)
