library(ggplot2)
mystate.x77 <- as.data.frame(state.x77)
ggplot(data=mystate.x77,aes(x=Income, y=Illiteracy))+geom_point()

df = data.frame(table(mtcars$gear))#table->도수분포표
print(df)
ggplot(df,aes(x=Var1,y=Freq))+
geom_bar(stat="identity", width=0.7,
fill="steelblue")


am <- as.numeric(airmiles)
print(am)

#print(class(airmiles))

ggplot(as.data.frame(airmiles), aes(x=c(1937:1960),y=am))+
  geom_line(color='red',size=1)


ggplot()+
  geom_boxplot(data=iris,
               aes(x=Species,y=Petal.Width,
                   fill=Species))
