
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

top6 <- head(Alchohol_Raw)
barplot(top6$beer_servings, main = "Beer Servings", xlab = "Country", ylab = "Liters",
        names.arg = c("Afghanistan", "Albania", "Algeria", "Andorra", "Angola", "Antigua & Barbuda"), 
        border = "black", col = "blue")

plot(beer_servings, total_litres_of_pure_alcohol)
abline(lm(total_litres_of_pure_alcohol~beer_servings))
text(beer_servings, total_litres_of_pure_alcohol, labels = country, cex = .5, pos = 4, col = "green")

