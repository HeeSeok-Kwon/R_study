#geocode() 지역이름 -> 위도열, 경도열 : 데이터프레임
#register_google
#get_map(), ggmap(), geom_point()

install.packages("ggmap")
library(ggmap)

register_google(key="AIzaSyCVMfaruxYz1YuQZQr52kYiqapxyL2mLsw")
temp <- geocode("제주도 제주시 아라동 제주대학교")

str(temp)
temp <- cbind(temp,total=10)

map1 <- get_map("Jeju",zoom=10,maptype="terrain")
map1 <- ggmap(map1)
map1+geom_point(aes(x=lon,y=lat,size=total),data=temp)

map_seoul <- get_map("Seoul",zoom=5,maptype="terrain") #서울을 중심으로
map2 <- ggmap(map_seoul)
map2+geom_point(aes(x=lon,y=lat,size=total),data=temp)

map_seoul <- get_map("Seoul",zoom=6,maptype="terrain")
map2 <- ggmap(map_seoul)
map2+geom_point(aes(x=lon,y=lat,size=total,col="red"),data=temp)

################################################################

setwd("d:/mooc")
pop <- read.csv("Age_sum.txt",sep=' ',header=T, stringsAsFactors=F)
pop
head(pop)
library(stringr)
name <- str_c(pop$a1,' ',pop$a2,' ',pop$a3)
temp <- geocode(name)
pop <- cbind(pop,temp)

map1 <- get_map("Jeju",zoom=10,maptype="terrain")
map1 <- ggmap(map1)
map1+geom_point(aes(x=lon,y=lat,size=TOTAL),data=pop)

map1 <- get_map("제주",zoom=10,maptype="terrain")
map1 <- ggmap(map1)
map1+geom_point(aes(x=lon,y=lat,size=TOTAL),data=pop)