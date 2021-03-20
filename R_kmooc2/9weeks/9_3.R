#지도 위에 데이터의 크기 표현하기
head(quakes)

library(ggmap)
library(ggplot2)

df<-head(quakes,100)
cen <- c(mean(df$long),mean(df$lat))
gc <- data.frame(lon=df$long,lat=df$lat)
gc$lon <- ifelse(gc$lon>180, -(369-gc$lon), gc$lon)
gc
map <- get_googlemap(center=cen, maptype="roadmap",zoom=4,marker=gc)
ggmap(map)+theme(axis.title.x=element_blank(), #x축, y축 레이블 보이지 않게 함
                  axis.text.x = element_blank(),
                  axis.ticks.x = element_blank(),
                  axis.title.y = element_blank(),
                  axis.text.y = element_blank(),
                  axis.ticks.y = element_blank())


##################################################
map <- get_googlemap(center=cen, maptype="roadmap",zoom=5)
gmap <- ggmap(map)
gmap+geom_point(data=df, #원 그리기 
                aes(x=long,y=lat,
                size=mag),
                alpha=0.5) # 반투명