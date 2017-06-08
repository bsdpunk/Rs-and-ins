read.csv("~/ml/Chapter 05/credit.csv")
credit <- read.csv("~/ml/Chapter 05/credit.csv")
str(credit)
set.seed(123)
train_sample <- sample(1000, 900)
str(train_sample)
credit_train <- credit[train_sample, ]
credit_test <- credit[-train_sample, ]
prop.table(table(credit_train$default))
prop.table(table(credit_test$default))
library(C50)
credit_model <- C5.0( credit_train[-17], credit_train $ default)
credit_model <- C5.0( credit_train[-17], credit_train$default)
credit_model
summary(credit_model)
credit_pred <- predict( credit_model, credit_test)
library(gmodels)
CrossTable( credit_test $ default, credit_pred, prop.chisq = FALSE, prop.c = FALSE, prop.r = FALSE, dnn = c(' actual default', 'predicted default'))
CrossTable( credit_test$default, credit_pred, prop.chisq = FALSE, prop.c = FALSE, prop.r = FALSE, dnn = c('actual default', 'predicted default'))
#credit_boost10 <- C5.0( credit_train[-17], credit_train $ default, trials = 10 )
#credit_boost10
