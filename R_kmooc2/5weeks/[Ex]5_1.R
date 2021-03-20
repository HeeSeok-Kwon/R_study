#1
#plot(cars$speed,cars$dist,main="제동거리")
#2
#plot(pressure$temperature,pressure$pressure)
#3
#print(state.x77)
vars <- c("Population","Income","Illiteracy","Area")
target <- state.x77[,vars]
pairs(target)

#4
# iris.2 <- iris[,3:4]
# point <- as.numeric(iris$Species)
# color <- c("red","green","blue")
# plot(iris.2,
# pch=c(point),
# col = color[point])