#Aula 13 - Data Frames

#Trabalhando com base de dados.

setwd("C:/abc")

#df <- read.csv("bolsa.csv") Isso apresentou erro, por causa de caracteres usados no arquivo.
#Teste
df = read.csv("bolsa.csv", fileEncoding = "Latin1", check.names = F)

#Analisando um data frame
df <- read.csv("exemplo.csv")
df <- read.csv("exemplo.csv", sep = ";", stringsAsFactors = T)
View(df)
str(df)
summary(df)

df
df[1]
df$id

#Cria um novo data frame. 
col1 <- df[1]
col2 <- df[2]
col1 <- df$id

#Exclui variavel do DF
df$parcelas <- NULL

#Alterando o tipo de variavel do DF
df$dias
summary(df$dias)
df$dias <- as.factor(df$dias)

#Criando variável dentro do DF

df$New <- "a"
df$New <- c(2,3,4,NA,NA)
summary(df$New)
df$New <- NA

#Inserindo caracteres com um parametro;
df$New[1:4] <- c(1,2,3,4)
class(df$New)
