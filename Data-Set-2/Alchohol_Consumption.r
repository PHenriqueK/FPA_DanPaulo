
library(rio)

Alchohol_Raw <- read.csv(curl(url = "https://github.com/fivethirtyeight/data/raw/master/alcohol-consumption/drinks.csv"))

summary(country)
summary(beer_servings)
summary(spirit_servings)
summary(total_liters)
summary(wine_servings)

summary(Alchohol_Raw)

attach(Alchohol_Raw)

hist(beer_servings)
hist(spirit_servings)

cor(Alchohol_Raw[-1], method = "pearson")
