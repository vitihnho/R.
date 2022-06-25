#Aula 13 - Filtros.
#Acessando, extraindo e modificando dados nas variáveis.

vogais <- c("a","e","i","o","u")

#acesssando a posição 3
vogais[3]

#Acessando tudo, menos a posição 3
vogais[-3]

#Acessando dados entre uma posição e outra
vogais[3:5]

#dados à partir do comprimento
length(vogais)
vogais[3:length(vogais)]
vogais[(length(vogais)-2):length(vogais)]
#as expressões acima imprimem o mesmo resultado.

#Através de outra variáveis usamos como parametro dentro de vogais
a <- 3
b <- 5
vogais[a:b]

#Acessando por condições.
vogais[vogais=="e"]
vogais[vogais!="e"]

a <- c(1,2,3,4,5)
a[a>2]
a[a>=2]

#Trabalhando com data frame
setwd("C:/abc")
df1 <- read.csv("exemplo.csv", sep = ";", stringsAsFactors = T)

df1[1]
#Mostrando a linha df[linha,coluna]
df1[1,]
#Monstrando todas as linhas, mas na 1 coluna
df1[,1]

#De uma coluna até outra
df1[1:2]

#Excluindo uma coluna
df1[-3]

#Primeiro linha das colunas de 1 até 2
df1[1,1:2]

#Primeira linha menos de certa linha
df1[1,-1]

#Mostrando número especifíco de linhas em certas colunas
df1[1:2,1:3]

#Exeluindo linha e coluna
df1[-1,-2]

#Modificando o df
df <- df[c(-1,-2)]

#Filtrando as variáveis.
df1[1,1]
df1$id[2]
df1$id[1:3]
df1[df1$id == 1,]
df <- df[df$id == 1,]

View(df1)
View(df)

#CONDIÇÔES
#If, loop for e loop while

#Se algo é verdade, fazer isso
if (5 == 5) 6 + 6

#Se não
if (5 == 6) 6 + 6 else "Condição não atendida"

#Melhores praticas
if (5!=6) {
  "Maior que 6"
}else{
  "Deu erro"
}

