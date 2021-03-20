setwd("C:/Rworks")

vote <- read.csv("국회의원_선거구_유권자수.csv")
library(treemap)
head(vote)

treemap(vote,
        index=c("시도","선거구명"), #계층구조
        vSize="선거인.수", #타일의 크기
        vColor="선거인.수", #타일의 컬러
        type="value", #타일 컬러링 방법 #vColor에서 지정한 색깔로 해라
        bg.labels="yellow") #레이블 배경색



vote.a <- aggregate(vote[,5],by=list(vote$시도),sum)
#4~6번째까지의 컬럼에 있는 값을 그룹 지어 집계
#대륙을 기준으로 합계를 내서 집계
treemap(vote.a,
        index=c("Group.1"), 
        vSize="x", #타일의 크기
        vColor="x", #타일의 컬러
        type="value", #타일 컬러링 방법 #vColor에서 지정한 색깔로 해라
        bg.labels="yellow") #레이블 배경색


