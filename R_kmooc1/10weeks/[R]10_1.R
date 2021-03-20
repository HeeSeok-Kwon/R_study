setwd("C:/R 실습/8weeks")
cust <- read.csv("고객.txt",stringsAsFactors = T)
cust
str(cust)

book <- read.csv("도서.txt",sep="\t",stringsAsFactors=F)
book
str(book)

purchase <- read.csv("주문.txt",stringsAsFactors = T)
purchase
str(purchase)

.libPaths("C:/Rworks/Library")
install.packages("plyr")
library(plyr)

cust_order <- ddply(purchase, '고객번호',summarise,주문합=sum(판매가격))
cust_order2 <- ddply(purchase, '고객번호',summarise,주문건수=length(판매가격),주문합=sum(판매가격))
cust_order3 <- ddply(purchase, '고객번호',summarise,판매가격=max(판매가격),주문합=sum(판매가격))
cust_order4 <- ddply(purchase, '고객번호',transform,주문합=sum(판매가격), 주문비율=판매가격/sum(판매가격))

install.packages("reshape2")
library(reshape2)

학생1 <- data.frame(학번=c(1,2,3),
                    이름=c("홍길동","춘향이","심청이"),
                    영어=c(90,88,95),
                    수학=c(80,85,88),
                    stringsAsFactors=F)
학생1_변환 <- melt(학생1,id.vars="학번")
학생2_변환 <- melt(학생1,id.vars="학번",measure.vars=c("영어","수학"))

원래학생1 <- dcast(학생1_변환, 학번~variable)
원래학생2 <- dcast(학생2_변환, 학번~variable)
temp <- dcast(학생1_변환, 학번~variable)
