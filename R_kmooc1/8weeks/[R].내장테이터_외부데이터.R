#내장데이터 : R에서 제공하는 데이터 set
#외부데이터 : R 입출력 명령어 사용 (Text, Excel, DB)
#text -> 구분자로 구분된 텍스트 읽기와 쓰기
#read.csv() / write.csv()
#Excel 
#read_excel() / write.xlsx()
#DB 
#읽기 : 내장함수 odbcConnect(), sqlQuery(), SELECT문 이용
#쓰기 : 내장함수 sqlQuery(), INSERT, UPDATE
#SQL 서버 외부접속허용 설정 TCP/IP 기반 접속 허용(SQL서버 구성관리자)
#OBDC 생성 : Open DataBase Connectivity 생성
# -> DB 접근 위한 표준 연결 방식
#데이터베이스 연결 odbcConnect()
#SQL 명령어 : sqlQuery()

setwd("C:/R 실습")
iris
head(iris)
str(iris)
dim(iris)

airquality
str(airquality)
dim(airquality)

test <- read.csv("고객.txt") #ANSI
test
str(test)
class(test)

test1<-read.csv("도서.txt",sep="\t")
test1
str(test1)
dim(test1)
?read.csv


test <- 1
write.csv(test,"test.csv",row.names = T)

install.packages("readxl")
library(readxl)
cust <- read_excel(path="서점DB.xlsx",sheet="고객",col_names=T)
cust
str(cust)
#주문 테이블을 고객테이블로 잘못 이름 지정
#실습에는 지장 없음
book<-read_excel(path="서점DB.xlsx",sheet=2,col_names=T)
book
str(book)
class(book)

order<-read_excel(path="서점DB.xlsx",sheet=2,col_names=T)
order
str(order)

?read_excel

install.packages("writexl")
library(writexl)

write_xlsx(book,"도서2.xlsx",format_header=F)
write_xlsx(book,"도서3.xlsx",col_names=F,format_header=F)
?write_xlsx
