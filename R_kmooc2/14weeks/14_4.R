#k-fold cross validation

#임의로 정한 test 데이터셋
#매번 달라지는 정확도
#k-fold cross validation --> 데이터를 여러 번 나누어 훈련/테스트 후 평균값으로 평가
#K값이 4 -> 전체 데이터 4등분
#모델(or 알고리즘)의 정확도는 각 fold의 정확도들의 평균으로 계산
#임의로 자를 경우, 클래스 데이터가 골고루 들어가지 않을 수 있음
#클래스 안에서 분할하여 블록 형성 -> 클래스 데이터들이 골고루 반영

require("class")

#get fold no for each rows
group.1 <- cut(seq(1,50), breaks=5, labels=FALSE)
group.2 <- cut(seq(51, 100), breaks=5, labels=FALSE)
group.3 <- cut(seq(101, 150), breaks=5, labels=FALSE)
fold <- c(group.1, group.2, group.3)

acc<-c() #accuracy for each fold
for(i in 1:5) {
  ds.tr <- iris[fold != i, 1:4]
  ds.ts <- iris[fold == i, 1:4]
  cl.tr <- factor(iris[fold != i, 5])
  cl.ts <- factor(iris[fold == i, 5])

  pred <- knn(ds.tr, ds.ts, cl.tr, k=3)
  acc[i] <- mean(pred == cl.ts) #예측 정확도
}

acc #accuracy of 5 fold
mean(acc) #mean accuracy of 5 fold