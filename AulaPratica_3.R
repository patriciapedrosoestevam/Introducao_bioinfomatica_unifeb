library(ggplot2)
library(VennDiagram)
library(grid)  

# Gráfico de Densidade
set.seed(123)
dados <- data.frame(
  Grupo = rep(c("Exposto", "Não Exposto"), each = 200),
  Expressao_Genica = c(rnorm(200, mean = 7, sd = 2), rnorm(200, mean = 5, sd = 1.5))
)

# Criar gráfico de densidade
ggplot(dados, aes(x = Expressao_Genica, fill = Grupo)) +
  geom_density(alpha = 0.6) +
  labs(title = "Distribuição da Expressão Gênica", x = "Expressão Gênica", y = "Densidade") +
  theme_minimal()


# Gráfico de Boxplot
ggplot(dados, aes(x = Grupo, y = Expressao_Genica, fill = Grupo)) +
  geom_boxplot(alpha = 0.6) +
  stat_summary(fun = mean, geom = "point", size = 1, color = "red", aes(shape = "Média")) +  # Adiciona legenda para a média
  scale_shape_manual(name = "Legenda", values = c("Média" = 16)) +  # Define símbolo para a legenda
  labs(title = "Boxplot da Expressão Gênica por Grupo", x = "Grupo", y = "Expressão Gênica") +
  theme_minimal()



# Diagrama de Venn
# Para garantir que o gráfico seja renderizado corretamente

# Criando conjuntos de genes
genes_exposto <- c("G1", "G2", "G3", "G4", "G5", "G6")
genes_nao_exposto <- c("G3", "G4", "G5", "G7", "G8", "G9")

# Criar diagrama de Venn com legenda menor e renderização ajustada
venn_plot <- venn.diagram(
  x = list(Exposto = genes_exposto, Não_Exposto = genes_nao_exposto),
  category.names = c("Exposto", "Não Exposto"),
  filename = NULL,  # Exibir diretamente
  fill = c("blue", "red"),
  alpha = 0.5,
  cat.cex = 0.5,  # Reduz o tamanho da legenda
  main = "Diagrama de Venn - Expressão Gênica",
  font.main = 14
)

# Garantir renderização correta
grid.newpage()
grid.draw(venn_plot)



