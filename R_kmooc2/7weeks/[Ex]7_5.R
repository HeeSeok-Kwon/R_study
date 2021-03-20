#usb 저장된 파일이 정답
#이건 과제 연습
#1
# library(ggplot2)
# ggplot(data=state.x77,aes(x=Income, y=Illteracy))+goem_point()


#2
# df = data.frame(table(mtcars$gear))#table->도수분포표
# print(df)
# ggplot(df,aes(x=Var1,y=Freq))+
# geom_bar(stat="기어수별 빈도", width=0.7,
# fill="steelblue")

#3
am <- as.numeric(airmiles)
print(am)

#print(class(airmiles))

ggplot(airmiles, aes(x=c(1937:1960),y=am))+
geom_line(color='red',size=1)


#4
ggplot()+
geom_boxplot(data=iris,
aes(x=Species,y=Petal.Width,
fill=Species))
