reg <- function( y, x) { x <- as.matrix(x); x <- cbind( Intercept = 1, x); b <- solve(t(x) %*% x) %*% t(x) %*% y; colnames(b) <- "estimate"; print( b) }
str(launch)
reg( y = launch$distress_ct, x = launch[2])
reg( y = launch$distress_ct, x = launch[2:4])

insurance <- read.csv('~/ml/Chapter 06/insurance.csv', stringsAsFactors = T)
str(insurance)
summary(insurance$expenses)
hist(insurance$expenses)
table(insurance$region)
cor( insurance[ c("age", "bmi", "children", "expenses")])
pairs(insurance[ c("age", "bmi", "children", "expenses")])


