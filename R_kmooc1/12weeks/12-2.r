install.packages("ggplot2")
install.packages("reshape2")
install.packages("plyr")
library(ggplot2)
library(reshape2)
library(plyr)
setwd("D:/lect")

temp = read.csv("A3_sum.txt",header=T,stringsAsFactors=F)
str(temp)
colnames(temp)
head(temp)

barplot(temp$TOTAL,main="지역별 유동인구수",names=temp$A3)

mtemp <- melt(temp,id.vars="A3",measure.vars=c("M10","M20","M30","M40","M50","M60","W10","W20","W30","W40","W50","W60",MAN,WOMEN,TOTAL))

head(mtemp)
str(mtemp)
colnames(mtemp) = c("REGION","AGE","QTY")
mtemp

gg=ggplot(mtemp,aes(x=mtemp$REGION, y=mtemp$AGE))+geom_point(aes(size=mtemp$QTY))
gg+theme(axis.text.x=element_text(angle=90,hjust=1,vjust=1,size=13))

gg=ggplot(mtemp,aes(x=mtemp$REGION, y=mtemp$AGE))+geom_point(aes(size=mtemp$QTY))
gg+ggtitle("제주도 유동인구분포 현황")+theme(axis.text.x=element_text(angle=90,hjust=1,vjust=1,size=13))

gg=ggplot(mtemp,aes(x=mtemp$REGION, y=mtemp$AGE))+geom_point(aes(size=mtemp$QTY))
gg+xlab("읍면동")+ylab("연령및성별")+theme(axis.text.x=element_text(angle=90,hjust=1,vjust=1,size=13))

#############################################################################

head(temp)
str(temp)

gtemp<-ggplot(temp,aes(x=A3,y=TOTAL))

gtemp+geom_bar(stat="identity")

gg_bar <- gtemp+geom_bar(stat="identity")
gg_bar <- gtemp+geom_bar(stat="identity") + ggtitle("제주도 유동인구 분포 현황")
gg_bar + xlab("읍면동")+ylab("유동인구")+theme(axis.text.x=element_text(angle=90,hjust=1,vjust=1,size=13))

#---mtemp => temp를 melt하여 구조변경한 것 => 누적분포 표현 목적
head(mtemp)
str(mtemp)

gmtemp <- ggplot(mtemp,aes(x=REGION,y=QTY,fill=AGE))

gmtemp+geom_bar(stat="identity")

gg_mbar <- gmtemp+geom_bar(stat="identity")
gg_mbar + xlab("읍면동")+ylab("연령및성별")+theme(axis.text.x=element_text(angle=90,hjust=1,vjust=1,size=13))

#############################################################################

install.packages("ggmap")
library(ggmap)
library(stringr)

register_google(key="AIzaSyCVMfaruxYz1YuQZQr52kYiqapxyL2mLsw")

name <- str_c(temp$A1,' ',temp$A2,' ',temp$A3)
위도경도 <-geocode(name)
pop<-cbind(temp,위도경도)
str(pop)

map1<-get_map("Jeju",zoom=10,maptype="terrain")
map1<-ggmap(map1)
map1+geom_point(aes(x=lon,y=lat,size=TOTAL),data=pop)

map1<-get_map("제주",zoom=10,maptype="terrain")
map1<-ggmap(map1)
map1+geom_point(aes(x=lon,y=lat,size=TOTAL),data=pop)

map1<-get_map("제주",zoom=10,maptype="satellite")
map1<-ggmap(map1)
map1+geom_point(aes(x=lon,y=lat,size=TOTAL,color="red"),data=pop)

map1<-get_map("제주",zoom=10,maptype="roadmap")
map1<-ggmap(map1)
map1+geom_point(aes(x=lon,y=lat,size=TOTAL),data=pop)

map1<-get_map("제주",zoom=10,maptype="hybrid")
map1<-ggmap(map1)
map1+geom_point(aes(x=lon,y=lat,size=TOTAL,color="red"),data=pop)

#############################################################################

#상관분석 : 두 변수 사이의 상관계수를 계산하여 상관성 파악 목적
#상관계수 : 일반적으로 |0.4|이상이어야 상관도가 있다고 봄
#양수이면 => 한 변수가 커지면 다른 변수도 증가함
#음수이면 => 한 변수가 커지면 다른 변수는 감소함

#R에서는 cor()함수에서 상관계수 계산 가능

?cor
head(temp)
str(temp)

cor(temp$M10,temp$M40)
temp[,6:18]
colnames(temp[,6:18])
cor(temp[,6:18])

#여러 변수 사이의 상관분석 결과를 시각화 => 셀 색깔이 진할수록 상관도가 높다.

install.packages("corrgram")
library(corrgram)
head(temp[,6:18])
temp1 <- temp[,6:18]
corrgram(temp1,upper.panel=panel.conf)

library(sqldf)

temp2 <- sqldf("select M10, M20, M30, M40, M50, M60 from temp where a2 = \'제주시\'") #구문 오류
head(temp2)
corrgram(temp2, upper.panel=panel.conf)
temp3 <- sqldf("select M10, M20, M30, M40, M50, M60 from temp where a2 = \'서귀포시\'") #구문 오류
head(temp3)
corrgram(temp3, upper.panel=panel.conf)