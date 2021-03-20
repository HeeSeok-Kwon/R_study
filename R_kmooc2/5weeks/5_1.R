#다변량 자료 : 분석하려는 주제가 두 개 이상인 것
#이변량 자료 : 변수가 두 개인 것
#matrix, data.frame
#분석대상이 되는 주제가 변수
#통상 열 방향으로 보이는 것이 변수
#행방향 : 관측치

#산점도 : 이변량 자료의 분포 및 상관관계
# wt <- mtcars$wt
# mpg <- mtcars$mpg
# #산점도를 그리는 명령어
# plot(wt,mpg, #두 개의 변수에 대한 관계만 나타냄
# main="Car Weight-mpg",
# xlab="car Weight",
# ylab="Miles PEr Gallon",
# col="red", #pointer의 color
# pch=1) #point 종류(1,2,19)

#pairs()
# vars <- c("mpg","disp","drat","wt")
# target <- mtcars[,vars]
# pairs(target, main="Multi plots")

#그룹별 산점도
iris.2 <- iris[,3:4]
point <- as.numeric(iris$Species)
color <- c("red","green","blue")
plot(iris.2,
main="Iris plot",
pch=c(point),
col=color[point])