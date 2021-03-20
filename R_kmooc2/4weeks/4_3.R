##일변량 양적 자료의 분석##

#mean
#크기가 주어진 자료를 분석할 때 먼저 구하는 것
#모든 국민들의 소득 자료 -> 전체 자료를 대표할 수 있는 값, 평균

#자료에 따라 중앙값이 대표값

#절사 평균 : 표본 중 작은 값 n%와 큰 값 n%를 제외하고 나머지(100-2n)%자료만 사용하여 구한 평균

#한쪽에 치우친 자료의 대표값 구하기 -> 중앙값 사용 ex) 소득

#4분위수 : 3 개의 수로 데이터 추정하기 -> 나열한 것을 4등분 -> 등분점 3개

mydata <- c(50,60,100,75,200)
mydata.big <- c(mydata, 50000)
# print(mean(mydata))
# print(mean(mydata.big))
# print(median(mydata))
# print(median(mydata.big))
# print(mean(mydata, trim=0.2))
# print(mean(mydata.big, trim=0.2))
# print(quantile(mydata))
# print(quantile(mydata.big))
# print(summary(mydata))
# print(fivenum(mydata))
# print(quantile(mydata, (0:10)/10))
# print(quantile(mydata, (1:10)/10))

#산포 : 데이터가 퍼져 있는 정도, 흩어져 있는 정도
#분산과 표준편차

#diff(), var(), sd()
# print(diff(range(mydata))) #최대값,최소값 두 값의 차이 
# print(var(mydata))
# print(sd(mydata))

#box plot : 일변량 양적 자료의 데이터를 시각적으로 확인할 수 있는 도구

# print(head(state.x77))
# st.income <- state.x77[,"Income"]
# boxplot(st.income, ylab="Income")

# boxplot(iris$Petal.Width, ylab="Petal.Width")

# boxplot(Petal.Width~Species, data=iris, ylab="Petal.Width")


#히스토그램 -> 셀 수 없는 자료(키, 몸무게) -> 구간을 나누어 표시
# st.income <- state.x77[,"Income"]
# hist(st.income,
# main="Histogram for Income",
# xlab="income", 
# ylab="frequency",
# border="blue", #막대의 테두리색
# col="green", #막대 내부의 색
# las=2, #x축 글씨의 방향
# breaks=5) #막대의 개수 -> 크면 촘촘하게 자른 것

#줄기-잎 그림
score <- c(40,55,90,75,59,60,63,65,69,71)
print(stem(score, scale=2)) #줄기의 수 -> scale값이 커지면 줄기 수 증가(줄기당 잎 수 감소)
print(stem(score, scale=0.5))