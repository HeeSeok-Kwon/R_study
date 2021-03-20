#1
split(state.x77, state.region)

#2
st <- data.frame(state.x77)
class(st)
subset(st, st$Area > st["Alabama",]$Area & st$Area < st["California",]$Area,
       select=c(Population,Income,Area))

#3
idx <- sample(nrow(iris), size=40, replace=F)
iris.40 <- iris[idx,]
iris.110 <- iris[-idx,]
head(iris.40)
head(iris.110)
iris.40
iris.110

#4
x <- unique(iris$Species)
com <- combn(x,2)
com
