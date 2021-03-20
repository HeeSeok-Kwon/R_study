.libPaths()
.libPaths('C:/Rworks/Library')
install.packages(ggplot2)
library(ggplot2)

ggplot(data=iris,aes(x=Petal.Length, y=Petal.Width))+geom_point()#그래프 모양
ggplot()+geom_point(data=iris,aes(x=Petal.Length, y=Petal.Width))

ggplot()+geom_point(
  data=iris,
  aes(x=Petal.Length, y=Petal.Width),
  color="red", #점의 색깔
  size=4 #점의 크기
)

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
gp


gp+ggtitle("IRIS data")+
  theme(plot.title=element_text(size=14,
                                face="bold",color="blue",hjust=0.5))#0.5:가운데/0:왼쪽/1:오른쪽

gp2<-gp+ggtitle("IRIS data")+
  theme(plot.title=element_text(size=14,
                                face="bold",color="blue",hjust=0.5))#0.5:가운데/0:왼쪽/1:오른쪽
gp2



#x
ggplot(data=iris,aes(x=Petal.Length,
                       y=Petal.Width))
+geom_point() 

#o
ggplot(data=iris,aes(x=Petal.Length,
                       y=Petal.Width))+
geom_point() 





ggplot(mtcars, aes(x=wt,y=mpg))+
  geom_line(color='red',size=1)


df = data.frame(table(mtcars$carb))#table->도수분포표
df
ggplot(df,aes(x=Var1,y=Freq))+
  geom_bar(stat="identity", width=0.7,
           fill="steelblue")


ggplot()+
  geom_boxplot(data=iris,
               aes(x=Species,y=Petal.Length,
                   fill=Species))
