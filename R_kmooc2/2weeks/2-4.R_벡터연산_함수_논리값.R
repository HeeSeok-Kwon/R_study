d<-c(1,4,3,7,8)
2*d #벡터에 들어있는 모든 원소에 대한 연산
d-5
3*d+4

x<-c(1,2,3)
y<-c(4,5)
c(x,y)
z<-c(x,y)

y<-c(4,5,6)
x+y #대응하는 원소끼리 +, 두 벡터의 길이가 같아야 함
z<-x+y
z
x-y
z[1:2]


#sum() -> 벡터의 모든 원소 합
#mean() -> 자료의 평균
#median() -> 자료의 중앙값
#max(), min()
#var()
#sd()
#sort() -> 자료를 정렬하여 출력
#range() -> 자료의 범위
#length() -> 자료의 갯수

d<-c(1,2,3,4,5,6,7,8,9,10)
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
mean(d[1:4])
max(d)
min(d)
sort(d, decreasing = FALSE) #오름차순
sort(d, decreasing = TRUE) #내림차순

v1 <- median(d)
v1
v2<-sum(d)/length(d)
v2

help(sort)
sort(d, FALSE) #매개변수 이름 없을 때, 반드시 순서대로
sort(d) #매개변수 생략 -> 디폴트 값

v1<-c(4,2,3,1,6,10,8,9)
sort(x=v1, decreasing = TRUE)
sort(v1, FALSE)
sort(v1)

##논리연산자#####################
d>=5
d[d>5]
d[d<3]
d[d==8]
sum(d>5) #TRUE 1, FALSE 0

sum(d[d>5])
6+7+8+9+10
d==5

condi <- d>5 & d<8
condi
d[condi]
condi <- d[d>5 & d<8]
condi
help(vector)
