#ggplot2 패키지
#ggplot, geom_point, geom_bar, theme(축 라벨 테마 표현)
#데이터 명시 : ggplot / 그래프 타입 : geom_point, geom_bar / 축 라벨 테마 : theme 

#ggplot(화일이름,aes(x=열이름,y=열이름))
#melt된 데이터프레임 기반 누적 표현->ggplot(화일이름,aes(x=열이름,y=열이름,fill=variable))

#축 라벨 테마
# -aes(color=열이름, shape=열이름),size=크기)
# -theme(x축 및 y축의 라벨항목 표현 형태 설정)

install.packages("ggplot2")
library(ggplot2)

gxy <- ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))
gxy+geom_point()

gxy+geom_bar() #히스토그램 개념 => x축만 요구
gxy+geom_bar(stat="identity") #막대그래프 개념 => x축과 y축 가능
# 개별 값들을 막대로 설정해서 그림
gxy+geom_bar(stat="identity",fill="red")

gx <- ggplot(data=iris,aes(x=Sepal.Length))
gx+geom_bar()

gxy <- ggplot(data=iris, aes(x=Sepal.Length,y=Sepal.Width))
gxy+geom_point(aes(color=Species,shape=Species),size=3)

gg<-gxy+geom_point(aes(color=Species,shape=Species),size=3)
gg+theme(axis.text.x=element_text(color="blue",size=20),axis.text.y=element_text(color="red",size=20))

library(doBy)
sl_m<-aggregate(iris$Sepal.Length~iris$Species,FUN=mean)
class(sl_m)
str(sl_m)
names(sl_m)<-c("붓꽃종","꽃받침길이평균")
gsl_m<-ggplot(data=sl_m,aes(x=붓꽃종,y=꽃받침길이평균))

gsl_m+geom_point(aes(color=붓꽃종,shape=붓꽃종),size=3)

gsl_m+geom_bar(stat="identity",fill="dark blue")#붓꽃종:factor형

학생1 <- data.frame(학번=c(1,2,3), 
                  이름=c("홍길동","춘향이","심청이"),
                  영어=c(90,88,95),
                  수학=c(80,85,88),
                  stringsAsFactor=F)
library(ggplot)

g학생1 <- ggplot(학생1,aes(x=이름,y=영어))
g학생1+geom_point()
g학생1+geom_point(size=5)
g학생1+geom_point(aes(color=이름,shape=이름),size=5)

g학생1+geom_bar(stat="identity",fill="dark blue")

학생1_변환<-melt(학생1,id.vars="학번")

g학생1_변환<-ggplot(학생1_변환,aes(x=학번,y=value,fill=variable))
g학생1_변환+geom_bar(stat="identity")

학생1_변환2<-melt(학생1, id.vars="이름",measure.vars=c("영어","수학"))
g학생1_변환2<-ggplot(학생1_변환2,aes(x="이름",y=value,fill=variable))
g학생1_변환2+geom_bar(stat="identity")

gg<-g학생1_변환2+geom_bar(stat="identity")
gg+theme(axis.text.x=element_text(angle=45,color="blue",size=5))
gg+theme(axis.text.x=element_text(angle=90,color="blue",size=10))
gg+theme(axis.text.x=element_text(color="red",size=20))
gg+theme(axis.text.x=element_text(angle=45,hjust=1,vjust=1,color="blue",size=10))
gg+theme(axis.text.x=element_text(angle=45,hjust=-5,vjust=-5,color="blue",size=10))

#geom_bar()함수를 이용하여 막대그래프의 기능을 적용하기 위해서는 stat 변수의 값을 "identity"로 설정하여야 한다.(x)