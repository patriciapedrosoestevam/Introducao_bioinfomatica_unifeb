### Script da aula 1

# Para mudar número de casas decimais
?options # "?" chama o help do comando
options(digits = 7)

# Operações Básicas ----
10+2
50-3
5*3
59/3
10^2
10+2; 50-3; 5*3

# Para mudar número de casas decimais
?options
options(digits = 4)
59/3

# Funções Matemáticas do R Base ----
sqrt(4)
?sqrt
abs(-5)
exp(2)
?log
log(10)
log(10, base = 10)
log(10, 10)
factorial(3)

# Objetos ----
x = 10
x2 <- 10
curso2025 = 100
curso.2025 = 100
curso_2025 = 100

?rm # para remover objetos
rm(curso_2025)
rm(list = c('x', 'x2'))

ls() # lista todos os objetos
objetos = ls()
objetos
rm(list = objetos)

rm(list = ls()) # apaga todas as variáveis

# Classes de Objetos ----

n = 134
v = TRUE
f = FALSE
p = '3'
d = 3.2

n + d
n + p # erro pq nao pode somar numero com caracter
n + v
n + f
n - v
n - f

# stringr # pacote para trabalhar com strings/character
# Criando Vetores ----
vetor_numerico = c(1, 4, -0.3, 9) # vetor numérico
vetor_numerico
class(vetor_numerico) # informa a classe desse objeto

vetor_logico = c(TRUE, FALSE, TRUE) # vetor lógico
vetor_logico
class(vetor_logico)

# convertendo
as.logical(c(0, 1, 0, 1, 100)) # convertendo dados numericos para lógicos
as.numeric(vetor_logico) # convertendo objetos lógicos para numericos

vetor_logico2 = c(vetor_logico, vetor_numerico) # concatena os dois objetos
vetor_logico2
class(vetor_logico2)

c(vetor_logico, 5) # adiciona o dado "5" na 4ºposicao 
class(c(vetor_logico, 5))

vetor_caracter = c("oi", "olá", "tchau") # vetor de caracteres
vetor_caracter
class(vetor_caracter)

vetor_caracter2 = c(vetor_caracter, vetor_logico, vetor_numerico)
vetor_caracter2
class(vetor_caracter2)

# Hierarquia das classes no R
# character > numeric > logical 
vetor_numerico[1] # primeiro elemento do vetor
vetor_numerico[5] # quinto elemento do vetor
length(vetor_numerico)

vetor_numerico[-length(vetor_numerico)] # vetor sem o último elemento
vetor_numerico[c(1, 4)]
vetor_numerico[-c(1, 4)]
vetor_numerico[c(-1,-4)]

vetor_numerico[1] = NA # primeiro elemento recebe um missing
vetor_numerico
vetor_numerico[c(1, 2)] = c(2, 4) # trocando os dois primeiros elementos
vetor_numerico
vetor_numerico[c(1, 2)] = c(2, 4, 5) # não funciona!! nao em nado 
vetor_numerico

vetor_numerico2  = vetor_numerico
vetor_numerico2
vetor_numerico2[c(1, 2)] = vetor_numerico2[c(3, 4)]
vetor_numerico2

vetor_numerico[10] = 5 # adicionando um elemento na quinta posição do vetor
vetor_numerico
vetor_numerico*1000

# Comando de decisão
# Decisao condicional (if e else)
x <- 10
if (x > 5) {
  print("x é maior que 5")
} else {
  print("x é menor ou igual a 5")
}

# Repetição enquanto condição for verdadeira (while)
contador <- 1
while (contador <= 5) {
  print(paste("Contagem:", contador))
  contador <- contador + 1
}

# Loop para percorrer vetores ou sequências (for)
for (i in 1:5) {
  mensagem <- paste("Iteração:", i)
  print(mensagem)
}
# paste("Iteração:", i) junta "Iteração:" com o valor de i.


# Vamos praticar?
# Crie uma sequência do seu ano de nascimento até 2023 e responda:
x<-seq(from = 1970, to = 2025, by = 1)

# (a) Qual é a posição do número 2020?
which(x == 2020)

# (b) Quantos elementos existem nesse vetor?
comprimento<-length(x)

# (c) Qual é a diferença entre o último e o primeiro elemento desse vetor?
df<- x[comprimento] - x[1]

