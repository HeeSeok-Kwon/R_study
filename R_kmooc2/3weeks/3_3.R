# print(dim(iris)) #행과 열의 수 보이기
# print(nrow(iris))
# print(ncol(iris))
# print(names(iris))
# print(head(iris))
# print(tail(iris))

# print(str(iris)) #data set 요약 보이기
# print(unique(iris[,5]))
# print(table(iris[,"Species"]))

#칼럼별, 행별 합계 및 평균
# print(colSums(iris[,-5])) #-5제외
# print(colMeans(iris[,-5]))
# print(rowSums(iris[,-5])) #-5제외
# print(rowMeans(iris[,-5]))

# z<-matrix(1:20, nrow=4,ncol=5)
# print(z)
# print(t(z)) #행과 열 변환

# subset() : 조건에 맞는 행 추출
# IR.1 <- subset(iris, Species=="setosa")
# print(IR.1)
# IR.2 <- subset(iris, Sepal.Length>5.0 & Sepal.Width>4.0)
# print(IR.2)
#matrix -> data.frame -> subsset 사용

a<-matrix(1:20,4,5)
b<-matrix(21:40,4,5)
# print(a)
# print(b)
# print(a+b)
# print(a-b)
# print(a*b)
# print(b/a)
# print(a %*% b) #행렬곱셈 --> error

# print(3*a)
# print(b-5)
# print(2*a + 3*b)

# a<-a*3
# b<-b-5
# print(a)
# print(b)

# print(is.matrix(iris))
# print(is.data.frame(iris))
# print(class(iris))
# print(class(state.x77))

# iris.m <- as.matrix(iris[,1:4])
# print(head(iris.m))
# print(class(iris.m))

# st <- data.frame(state.x77)
# print(head(st))
# print(class(st))

# tmp <- iris[,-5]
# print(class(tmp))
# tmp2 <- as.matrix(tmp)
# print(class(tmp2))

# func help 사용