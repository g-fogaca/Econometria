# importando bibliotecas
# install.packages("wooldridge")
library(wooldridge)
library(tidyverse)

# importando dados
dados <- wooldridge::wage1

# Encontre o n�vel m�dio de educa��o na amostra.
mean(dados$educ)


# Quantas pessoas possuem os anos mais baixos
# e quantas os anos mais altos de educa��o?
dados %>% 
  select(educ) %>% 
  filter(educ == min(educ) | educ == max(educ)) %>% 
  table()

# Encontre o sal�rio m�dio por hora na amostra.
mean(dados$wage)

# Quantas mulheres est�o na amostra? Quantos homens?
dados %>% 
  select(female) %>% 
  table() # 0 = Homem e 1 = Mulher