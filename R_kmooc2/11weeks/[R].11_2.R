#정렬(sort, order, rank)
v1 <- c(1,7,6,8,4,2,3)
order(v1) #벡터의 순서
v1 <- sort(v1)
v1
v2 <- sort(v1, decreasing = T)
v2

#기준 변수(칼럼)값에 의한 2차원 배열의 정렬
head(iris)
order(iris$Sepal.Length) #기준값에 의한 순서
iris[order(iris$Sepal.Length),]

iris[order(iris$Sepal.Length, decreasing = T),]
iris[order(iris$Species, iris$Sepal.Length),] #정렬 기준 2개 이상 지정

v3<-c(1,7,2,5)
order(v3) #이 순서로 뽑아라
rank(v3) #현재 값에서 특정한 위치에 있는 것의 순위
