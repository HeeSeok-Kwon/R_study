setwd("C:/R 실습/8weeks")
cust <- read.csv("고객.txt",stringsAsFactors = T)
cust
str(cust)

book <- read.csv("도서.txt",sep="\t",stringsAsFactors=F)
str(book)

.libPaths("C:/Rworks/Library")
install.packages("readxl")
library(readxl)

order <- read_excel(path="서점DB.xlsx",sheet=3,col_names=T)
order
str(order)


summary(iris)

summary(cust)
summary(book)
str(book)
summary(order)


order2 <- read.csv("주문.txt",stringsAsFactors = T)
str(order2)
order2
summary(order2)

?summary


install.packages("doBy")
library(doBy)
summaryBy(Sepal.Width + Sepal.Length ~ Species, iris)
summaryBy(판매가격 ~  고객번호, order2)
summaryBy(판매가격 ~  도서번호, order2)
summaryBy(판매가격 ~  판매일자, order2)
summaryBy(판매가격 ~  판매일자, order2, FUN=sum)
summaryBy(판매가격 ~  판매일자, order2, FUN=var)

?summaryBy

fun <- function(x){
  c(m=mean(x), v=var(x), n=length(x), s=sum(x))
}
summaryBy(판매가격 ~  판매일자, order2, FUN=fun)


aggregate(Sepal.Width  ~  Species, iris, FUN="mean")
aggregate(Sepal.Width  ~  Species, iris, FUN="sum")
aggregate(Sepal.Width+Sepal.Length  ~  Species, iris, FUN="max")
aggregate(판매가격  ~  고객번호, order2, FUN="sum")
aggregate(판매가격  ~  고객번호, order2, FUN="max")
고객별판매총액 <- aggregate(판매가격  ~  고객번호, order2, FUN="sum")
고객별최대판매가격 <- aggregate(판매가격  ~  고객번호, order2, FUN="max")
class(고객별판매총액)


test <- tapply(iris$Sepal.Width, iris$Species, mean)
test
고객별판매총액 <- tapply(order2$판매가격, order2$고객번호, sum)
class(고객별판매총액)

install.packages("sqldf")
library(sqldf)
str(order2)
cust_sell <- sqldf("select 고객번호, sum(판매가격) from order2 group by 고객번호")
cust_sell

colnames(cust_sell) <- c("cust_no","sales")
cust_sell
colnames(cust_sell) <- c("고객번호","판매액")
cust_sell


order(iris$Sepal.Width)  # 꽃잎 넓이
iris[order(iris$Sepal.Width) ,]
order(order2$판매가격)
order2[order(order2$판매가격),]
order(order2$판매가격, decreasing=T)               # 내림차순
order2[order(order2$판매가격, decreasing=T),]      # 오름차순


orderBy(~Sepal.Width, iris)  # 꽃잎 넓이 기준 오름차순 정렬 .. 내림차순 정렬 옵션 없음
head(orderBy(~Sepal.Width, iris))
head(orderBy(~Species + Sepal.Width, iris))
orderBy(~판매가격, order2)
orderBy(~고객번호, order2)
orderBy(~판매일자, order2)
orderBy(~이름, cust)

sample(1:10, 3)
sample(1:10, 3, replace=T) #복원추출
sample(1:3, 2, prob=c(5,2,3))      # 각 샘플요소(1, 2, 3)에서 2개 뽑을 때, 뽑힐 확률을 50%, 20%, 30%로 설정

sampleBy(~Species, frac=0.05, data=iris)        #각 그룹에서 5%씩 추출
sampleBy(~Species, frac=0.1, data=iris)         #각 그룹에서 10%씩 추출
