#샘플링 : 전체 데이터 중에서 일부를 무작위로 추출하는 방법
x <- 1:100
y <- sample(x, size=10, replace=FALSE)
#임의로 추출 / 대상 데이터, 10개 추출, 비복원 추출
#비복원 추출 : 추출한 데이터를 모집단에서 제외
y

#iris에서 50개의 행을 임의로 추출(비복원 추출)
idx <- sample(nrow(iris), size=50, replace=F)
iris.50 <- iris[idx,]
head(iris.50)

#조합
combn(5,3) # 5개 중에 3개를 뽑는 조합, 칼럼 한 개가 하나의 조합

x = c("red","green","blue","black","white")
com <- combn(x,2)
com
for(i in 1:ncol(com)) {
  cat(com[,i],"\n")
}
