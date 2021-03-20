#ggplot
#기차와 같은 명령 구조
library(ggplot2)
# ggplot(data=xx,aes(x=x1,y=x2))+geom_xx()+ .. #단일 그래프 그릴 때
# ggplot()+geom_xx(data=xx,aes(x=x1,y=x2))+ .. #그래프 위에 그래프를 겹쳐 그릴 때 편리

ggplot(data=iris,aes(x=Petal.Length, y=Petal.Width))+goem_point()#그래프 모양
ggplot()+geom_point(data=iris,aes(x=Petal.Length, y=Petal.Width))

ggplot()+geom_point(
  data=iris,
  aes(x=Petal.Length, y=Petal.Width),
  color="red", #점의 색깔
  size=4 #점의 크기
)

#goem_point 옵션
#x:x축 데이터
#y:y축 데이터
#alpht:점의 투명도
#colour(color):점의 색깔
#fill:점안을 채울 색깔(shape=21과 같은 경우 '파란 동그라미')
#group:데이터의 그룹정보(그룹에 따라 점의 모양, 색깔을 달리할 때)
#shape:점의 모양
#size :점의 크기
#Stroke:테두리 굵기

ggplot(data=iris,
      aes(x=Petal.Length, y=Petal.Width))+
  geom_point(
    aes(color=Species,shape=Species),#품종에 따라 다르게
    alpha=0.5,
    size=2
  )
)

gp<-ggplot(data=iris,
      aes(x=Petal.Length, y=Petal.Width))+
  geom_point(
    aes(color=Species,shape=Species),#품종에 따라 다르게
    alpha=0.5,
    size=2
  )
)

gp+ggtitle("IRIS data")+
  theme(plot.title=element_text(size=14,
  face="bold",color="blue",hjust=0.5))#0.5:가운데/0:왼쪽/1:오른쪽

gp2<-gp+ggtitle("IRIS data")+
  theme(plot.title=element_text(size=14,
  face="bold",color="blue",hjust=0.5))#0.5:가운데/0:왼쪽/1:오른쪽

#x
ggplot(data=myiris,aes(x=Petal.Length,
y=Petal.Width))
+geom_point() 

#o
ggplot(data=myiris,aes(x=Petal.Length,
y=Petal.Width))+
geom_point() 

ggplot(mtcars, aes(x=wt,y=mpg))+
geom_line(color='red',size=1)

#막대그래프
df = data.frame(table(mtcars$carb))#table->도수분포표
df
ggplot(df,aes(x=Var1,y=Freq))+
geom_bar(stat="identity", width=0.7,
fill="steelblue")

#상자그림
ggplot()+
geom_boxplot(data=iris,
aes(x=Species,y=Petal.Length,
fill=Species))

#Introduction to R graphics with ggplot2
#Top50 ggplot2 Visualizations