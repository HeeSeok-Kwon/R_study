x<-c(1,2,3)
y<-c("a","b","c")
z<-c(TRUE,TRUE, FALSE, FALSE)
a<-c(1,2,3,"a","b","c")
########################
v1 <- 50:90
v2<- c(1,2,3, 50:90)
########################
v3<-seq(1,101,3) #일정한 간격의 숫자로 구성된 벡터
v4<-seq(0.1, 1.0, 0.1)
########################
v5 <- rep(1, times=5) #어떤 값 반복해서 저장할 때
v6 <- rep(1:5, times=3)
v7 <- rep(c("a","b","c"), each = 3)
v7 <- rep(c("a","b","c"), times = 3)

score <- c(90,85,70)
names(score) <- c("John","Tom","Jane") #계산할 때 아무 영향 없음
score
names(score)[2] 

d<- c(1,4,3,7,8)
d[1] #R에서는 1부터 시작
d[1:3]
d[c(1,3,5)]
d[seq(1,5,2)]
d[-2] #2번째 값을 제외하고 나머지 모두 다
d[-c(3:5)]
d

GNP <- c(2000,2450,960)
names(GNP)<-c("Korea","Japen","Nepal")
GNP["Korea"]
GNP[c("Korea","Nepal")]
