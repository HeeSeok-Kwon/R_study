#일변량 자료 -> 변수가 하나 -> vector 사용
#질적 자료 -> 숫자로 표현이 안되는 -> 개수 세기

ans <- c("Y","Y","N","Y","Y")
ans
table(ans) #도수분포표
table(ans)/length(ans) #비율 출력

iris$Species
table(iris$Species)

#막대그래프 작성
favorite.color <- c("red","green","yellow","red","green","red","red")
sum<-table(favorite.color)
sum
barplot(sum, main="Favorite color") #main -> title
#Plots->zoom->copy

#막대그래프 사례
head(mtcars)
carb<-mtcars[,"carb"]
table(carb) #벡터
#기화기 수가 한 개인 모델 몇 개? -> 양적 자료임에도 개수 구함 
barplot(table(carb), main="Barplot of Carburetors",
        xlab="#of carburetors",
        ylab="frequency",
        col="red")

#한 화면에 그래프 여러 개 그리기
par(mfrow=c(1,3)) #3개로 분할
barplot(table(mtcars$carb),
        main="Barplot of Carburetors",
        xlab="#of carburetors",
        ylab="frequency",
        col="blue")

par(mfrow=c(1,3)) #3개로 분할
barplot(table(mtcars$carb),
        main="Barplot of Carburetors",
        xlab="#of carburetors",
        ylab="frequency",
        col="blue")
barplot(table(mtcars$cyl),
        main="Barplot of Cylender",
        xlab="#of cylender",
        ylab="frequency",
        col="red")
barplot(table(mtcars$gear),
        main="Barplot of Gear",
        xlab="#of gears",
        ylab="frequency",
        col="green")
?barplot
#http://www.theanalysisfactor.com/r-11-bar-charts
#http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf

#원그래프
favorite.color <- c("red","green","yellow","red","green","red","red")
sum<-table(favorite.color)
pie(sum,main="Favorite color")
#http://www.statmethods.net/graphs/pie.html
