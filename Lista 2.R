# importando bibliotecas
library(wooldridge)
library(tidyverse)

# importando dados
df <- wooldridge::k401k
summary(df)

# Visualizando Dados
df %>% 
  ggplot(aes(x = mrate, y = prate)) + 
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE)

# Modelo de regressão linear simples
mod <- lm(prate ~ mrate, data = df)
summary(mod)

# Análise de resíduos
hist(mod$residuals)

# Previsão para mrate = 3.5
new_mrate = data.frame(mrate = 3.5)
predict(mod, new_mrate)
