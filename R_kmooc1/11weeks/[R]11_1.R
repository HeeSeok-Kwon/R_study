plot(cars$speed, cars$dist)
cars
plot(cars$speed, cars$dist, xlab="제동거리",ylab="속도",
     main="자동차의 속도와 제동거리",
     pch=20,cex=2,col="green3")

plot(cars$speed, cars$dist, xlab="제동거리",ylab="속도",
     main="자동차의 속도와 제동거리",
     pch=20,cex=2,col="red")

plot(cars$speed, cars$dist, xlab="제동거리",ylab="속도",
     main="자동차의 속도와 제동거리",
     pch=20,cex=2,col="red",
     xlim=c(0,100),ylim=c(0,100))

plot(cars$speed, cars$dist, xlab="제동거리",ylab="속도",
     main="자동차의 속도와 제동거리",
     pch=20,cex=2,col="green3",
     type=)

summary(cars)
hist(cars$speed)
hist(cars$speed, breaks=2)
hist(cars$speed, breaks=10)
hist(cars$speed, breaks=25)
?hist
hist(cars$speed,main="차의 속도 분포",xlab="속도")

barplot(cars$speed)
barplot(cars$speed, col="red")
barplot(cars$speed, col="red",horiz=T)
barplot(cars$speed, main="자동차 속도",names=seq(1:nrow(cars)))
barplot(cars$speed, main="자동차 속도",names=seq(1:nrow(cars)),horiz=T)

x <- matrix(c(5,4,3,2),ncol=2)
barplot(x, beside=T, name=c("A그룹","B그룹"),col=c("green","yellow"))
v1 <- c(100,120,140,160,180)
v2 <- c(120,130,150,140,170)
v3 <- c(140,170,120,110,160)
qty <- data.frame(바나나=v1,체리=v2,오렌지=v3)

barplot(qty, main="과일의 판매량",beside=T,col=rainbow(nrow(qty)),ylim=c(0,200))
barplot(as.matrix(qty), main="과일의 판매량",beside=T,col=rainbow(nrow(qty)),ylim=c(0,200))

summary(cars$speed)
cars$speed
구간값 <- cut(cars$speed, breaks=3)
구간빈도 <- table(구간값)
구간이름 <- c("3.98보다 크고 11이하","11보다 크고 18이하","18보다 크고 25이하")
pie(구간빈도,main="속도분포",labels=구간이름)

.libPaths("C:/Rworks/library")
install.packages("treemap")
install.packages("stringr")
library(treemap)
head(cars)
str(cars)
nrow(cars)
treemap(cars, vSize="speed",index=c("speed","dist"))
temp <- cars
cspeed <- as.character(cars$speed)
library(stringr)
cspeed <- str_c("속도",cspeed)
temp <- cbind(temp,cspeed)
