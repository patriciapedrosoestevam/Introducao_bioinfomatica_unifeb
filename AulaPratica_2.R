# Instala os pacotes
#install.packages("readr")
#install.packages("ggplot2")

# Carrega a biblioteca
library(readr)
library(ggplot2)

#Carregar os dados
arquivo <- file.choose()  

# Verifica se o R está enxergando o arquivo
file.exists(arquivo)

# Lê o arquivo csv "Arquivo2.csv"
dados2 <- read_csv(arquivo)

# Outra forma de Carrega os dados
dados2 <- read_csv("/Users/patriciapedroso/Library/CloudStorage/OneDrive-Pessoal/Doutorado/Curso Computacao/Curso de Bioinformatica/UNIFEB/Arquivo2.csv")
dados2

# Calcula as médias
mean(dados2$time)
median(dados2$time)
sd(dados2$time,na.rm = FALSE)

mean(dados2$AirPassengers)
median(dados2$AirPassengers)

# Conta a quantidade de amostras
length(dados2$time)

