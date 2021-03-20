test <- split(iris,iris$Species)
test
head(test[[1]])
head(test[[2]])
head(test[[3]])
class(test)
df_setsoa <- as.data.frame(test[[1]])
df_setsoa

setwd("C:/R 실습/8weeks")
cust <- read.csv("고객.txt",stringsAsFactors = T)
cust
str(cust)

book <- read.csv("도서.txt",sep="\t",stringsAsFactors=F)
book
str(book)

order <- read.csv("주문.txt", stringsAsFactors=T)
str(order)
order

head(order)
order_cust_split <- split(order, order$고객번호)

order_cust1 <- as.data.frame(order_cust_split[[1]])  #? 이미 데이터프레임 구조임
order_cust2 <- as.data.frame(order_cust_split[[2]])
order_cust3 <- as.data.frame(order_cust_split[[3]])
order_cust4 <- as.data.frame(order_cust_split[[4]])

subset(iris, Species=="setosa")
s1 <- subset(iris, Species=="setosa")
s2 <-  subset(iris, Species=="versicolor")
s3 <-  subset(iris, Species=="virginica")
oc1 <- subset(order, 고객번호==1)
oc2 <- subset(order, 고객번호==2)
oc3 <- subset(order, 고객번호==3)
oc4 <- subset(order, 고객번호==4)
cust20000 <- subset(order, 판매가격 >= 20000, select=고객번호)

math_lec <- data.frame(이름=c("홍길동", "춘향이", "심청이"), 수학점수=c(100, 87, 97))
Eng_lec <- data.frame(학생이름=c("홍길동", "임꺽정", "심청이"), 영어점수=c(80, 85, 100))
merge(math_lec, Eng_lec)
cbind(math_lec, Eng_lec)
orderbook <- merge(book, order)
orderbookcust <- merge(orderbook, cust)
orderbookcust[,]
str(orderbookcust)
# 어떤 고객이 어떤 도서를 주문했는지를 나타내는 데이터프레임화일을 만들어라?
cust_book <- data.frame(cname = orderbookcust$이름, bname = orderbookcust$도서이름)
# 굿스포츠 출판사에서 출판한 책을 구매한 고객이름?
cust_굿스포츠 <- subset( orderbookcust,orderbookcust$출판사=="굿스포츠", select=이름 )
# 박지성 고객이 구매한 총 액수는?
aggregate(판매가격~이름, orderbookcust, FUN="sum")
