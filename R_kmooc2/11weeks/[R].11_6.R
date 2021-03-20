#데이터 요약(aggregate)
# 2차원 배열에 있는 데이터를 기준 변수(컬럼)에 따라 집계

#iris 데이터셋에서 각 품종별로 꽃잎, 꽃받침의 폭과 길이의 평균을 구하시오
agg <- aggregate(iris[,-5], by=list(iris$Species), FUN=mean)
#집계기준:품종
agg

agg <- aggregate(iris[,-5], by=list(iris$Species), FUN=sd)
agg

head(mtcars)
agg <- aggregate(mtcars, by=list(mtcars$cyl, mtcars$vs),FUN=max)
agg

agg <- aggregate(mtcars, by=list(cyl=mtcars$cyl, vs=mtcars$vs),FUN=max)
agg


#attach 
attach(mtcars) #사용하고자 하는 데이터셋 지정
agg <- aggregate(mtcars, by=list(cyl,vs),FUN=max)
#데이터셋 이름 없이 컬럼 이름만 입력
agg
detach(mtcars) #작업하고 있는 데이터셋 지정 해제

