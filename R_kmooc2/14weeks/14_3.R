#KNN classification 분류
#K Nearest Neighbor
#내 주변을 보고 내 정체성을 파악한다.

#K를 홀수로
#두 요소 사이의 거리 계산 --> Euclidean distance
#K값 < 데이터 수의 루트값
#예시. 100개 데이터 분포 시, K값은 10보다 작게, 5나 7 선호

#장점
#통계적 가정 불필요(비모수적 방법)
#단순하다
#단순성에 비해 성능이 좋다
#모델 훈련 시간이 필요 없다

#단점
#데이터가 커질수록 많은 메모리 필요
#데이터가 커질수록 처리시간(분류시간) 증가

knn(train, #훈련 데이터셋(전체) 
test, #테스트 데이터셋 (내가 알고싶은 데이터)
cl, #훈련 데이터셋의 그룹 정보(훈련 데이터의 레이블 정보)
k=1, #이웃의 개수
l=0, #최다득표수가 기준 이상이어야 유효한 예측으로 인정
prob=FALSE, 
use.all=TRUE)

require("class") #library와 같은 명령

#prepare train/test data
tr.idx <- c(1:25, 51:75, 101:125)
ds.tr <- iris[tr.idx, 1:4] #train data
ds.ts <- iris[-tr.idx, 1:4] #test data
cl.tr <- factor(iris[tr.idx, 5]) #train data의 class
cl.ts <- factor(iris[-tr.idx, 5]) #test data의 class

pred <- knn(ds.tr, ds.ts, cl.tr, k=3, prob=TRUE)
pred

acc <- mean(pred==cl.ts) #예측 정확도
acc 

table(pred, cl.ts)