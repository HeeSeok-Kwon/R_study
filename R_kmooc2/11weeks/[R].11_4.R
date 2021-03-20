#분리(split) & 선택(subset)
sp <- split(iris, iris$Species) #분리함수 + 데이터셋 + 분리기준
sp #list
summary(sp)
class(sp)
sp$setosa #특정 그룹 출력

subset(iris, Species == "setosa") #조건에 맞는 행 출력
subset(iris, Sepal.Length > 5.1)
subset(iris, Sepal.Length > 5.1 & Sepal.Width > 3.9)
subset(iris, Sepal.Length > 5.1, select=c(Petal.Length, Petal.Width))
# select : 칼럼 선택


#조건에 맞는 값들의 행 번호(index)
x <- c(3,1,7,8,5,9,4)
which(x>5) #인덱스 함수 
which(iris$Species=="setosa")
which.max(iris$Sepal.Length) #해당 칼럼 중에서 최대값이 있는 행
which.min(iris$Sepal.Width)
