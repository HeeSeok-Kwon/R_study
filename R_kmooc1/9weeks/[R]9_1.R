x<-data.frame(id=c(1,2,3),name=c("Kim","Lee","Park"),stringsAsFactors = F)
str(x)

y<-rbind(x,c(4,"Hong"))
y

z<-cbind(y,age=c(20,21,22,19))
z

setwd("C:/R 실습/8weeks")
cust<-read.csv("고객.txt",stringsAsFactors = F)
cust
str(cust)

book<-read.csv("도서.txt",sep="\t")
book
test<-rbind(cust,book) #error

cust<-rbind(cust,c(6,"춘향이","대한민국 서귀포","111-1111-1111"))
cust
cust<-cbind(cust,성별=c("M","w","w","m","w","w"))
cust


nc
a<-c(1,2,3)
b<-c("Kim","Lee","Park")
test<-cbind(a,b)
class(test)
test
test1<-as.data.frame(test,stringsAsFactors = F)
test1
str(test1)


df1<-data.frame(a=a,b=b)
df1
class(df1)
str(df1)

a<-matrix(c(1,2,3,4,5,6,7,8,9),ncol=3)
a
b<-matrix(c(1,2,3,4,5,6,7,8,9),ncol=3)
b

ra <- rbind(a,b)
ra
ca<-cbind(a,b)
ca

a1<-matrix(c(1,2,3,4,5,6),ncol=3)
a1
b1<-matrix(c("a","b","c","d","e","f"),ncol=3)
b1
c1<-rbind(a,b)
c1
str(c1)


d<-matrix(c(1,2,3,4,5,6),ncol=3)
d
x<-apply(d,1,sum) #행합계
x
y<-apply(d,2,sum) #열합계
y

sum<-cbind(x,y) #error
sum
colnames(sum)<-c("행합계","열합계")

sum<-rbind(x,y)
sum

x1<-colSums(d,na.rm=T)
x1
y1<-rowSums(d,na.rm=T)
y1

head(iris,n=2)
head(iris[,1:4],n=2)
apply(iris[,1:4],2,sum)

.libPaths("C:/Rworks/Library")
install.packages("readxl")
library(readxl)

order<-read_excel(path="도서2.xlsx",col_names = T)
order
str(order)
판매액합계 <- apply(order[4],2,sum)
str(판매액합계)

sellsum <- apply(order[4],2,sum) #열단위 연산
colSums(order[4])
sellsum
sellmean<-apply(order[4],2,mean)
sellmean
sellsum2<-colSums(order$판매가격)#x는 2차원 배열
#원래 안 되는 코드네...
sellsum2
?apply

colSums(iris$Sepal.Length)
colSums(iris[-5])
colSums(order[-5])
