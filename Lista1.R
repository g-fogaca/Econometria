# importando bibliotecas
# install.packages("wooldridge")
library(wooldridge)
library(tidyverse)

# importando dados
dados <- wooldridge::wage1

# Encontre o nível médio de educação na amostra.
mean(dados$educ)


# Quantas pessoas possuem os anos mais baixos
# e quantas os anos mais altos de educação?
dados %>% 
  select(educ) %>% 
  filter(educ == min(educ) | educ == max(educ)) %>% 
  table()

# Encontre o salário médio por hora na amostra.
mean(dados$wage)

# Quantas mulheres estão na amostra? Quantos homens?
dados %>% 
  select(female) %>% 
  table() # 0 = Homem e 1 = Mulher
