wine <- read.csv('~/ml/Chapter 06/whitewines.csv')
str(wine)
?str
hist(wine$quality)
summary(wine)
wine_train <- wine[ 1: 3750, ]
wine_train <- wine[ 1: 3750, ]
wine_test <- wine[ 3751: 4898, ]
library( rpart)
library( rpart)
m.rpart <- rpart(quality ~ ., data = wine_train)
m.part
m.rpart
library( rpart.plot)
rpart.plot(m.rpart, digits = 3)
rpart.plot( m.rpart, digits = 4, fallen.leaves = TRUE, type = 3, extra = 101)
p.rpart <- predict( m.rpart, wine_test)''
p.rpart <- predict( m.rpart, wine_test)
summary(p.rpart)
summary(wine_test$quality)
cor( p.rpart, wine_test$quality)
MAE <- function(actual, predicted) { mean(abs(actual - predicted))}
MAE(p.rpart, wine_test$quality)
mean(wine$quality)
MAE(5.87, wine_test$quality)
m.m5p <-  M5P(quality, ~ ., data = wine_train)
m.m5p <-  M5P(quality, ~ ., data = wine_train)
wine_train$quality
m.m5p <-  M5P(quality, ~ ., data = wine_train)
m.m5p <-  M5P(quality, ~ ., data = wine_train )
m.m5p <-  M5P(quality, ~ ., data = wine_train)
library(RWeka)
m.m5p <-  M5P(quality, ~ ., data = wine_train)
m.m5p <-  M5P(quality ~ ., data = wine_train)
m.m5p
summary(m.m5p)
p.m5p <- predict(m.m5p, wine_test)
summary(p.m5p)
cor(p.m5p, wine_test$quality)
MAE(wine_test$quality, p.m5p)
 
