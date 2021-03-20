
install.packages("RODBC")
.libPaths("C:/Rworks/Library")
library(RODBC)

conn <- odbcConnect("rConn")
class(conn)

cust1 <- sqlQuery(conn,"select * from 고객")
cust1
class(cust1)
test <- sqlQuery(conn,"update 고객 set 주소=\'대한민국 제주\'
                  where 이름 =\'박지성\'")

book <- sqlQuery(conn,"select * from 도서")
book
class(book)

install.packages("sqldf")
library(sqldf)
setwd("C:/R 실습")

cust <- read.csv("고객.txt",stringsAsFactors = T)
cust
str(cust)

book <- read.csv("도서.txt",sep="\t",stringsAsFactors=F)
book
str(book)

order3 <- read.csv("주문.txt",stringsAsFactors = F)
order3

sel_cust <- sqldf("select * from cust")
sel_book <- sqldf("select * from book")
sel_order <- sqldf("select * from order3")
sel_cust
sel_book
sel_order

str(order)
고객별판매액 <- sqldf("select 고객번호, sum(판매가격) from order3 group by 고객번호")
고객별판매액

cust_pr <- sqldf("select 고객번호, sum(판매가격) from order3 group by 고객번호")
cust_pr

colnames(cust_pr) <- c("cust_no","sales")
colnames(cust_pr) <- c("고객번호","판매액액")
