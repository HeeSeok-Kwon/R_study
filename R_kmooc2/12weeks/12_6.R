#구글맵 위에 탑승객 수 매핑
library(ggmap)
dat1 <- subset(subway3, income_date=="2012-05-08",
  select=c("XPOINT_WGS", "YPOINT_WGS",
  "on_tot","stat_name","LINE_NUM"))
Map_Seoul <- get_map(location=c(lon=126.97, lat=37.55), zoom=11, maptype="roadmap")

MM <- ggmap(Map_Seoul)

MM2 <- MM+geom_point(aes(x=YPOINT_WGS, y=XPOINT_WGS, size=on_tot,
  colour=as.factor(LINE_NUM)), data=dat1)

MM2 + scale_size_area(name=c("탑승객수"))+ scale_colour_discrete(name=c("노선"))+
  labs(x="경도", y="위도")

#2013년도 탑승객수 상위 10개역 지도에 시각화

#상위 10개역의 데이터 추출
stat_top10_2013 <- subset(subway2, subset = year=="2013" & stat_name %in% ten.station)
#역이름 기준 탑승객 수 집계
dat2 <- aggregate(stat_top10_2013[,"on_tot"],by=list(stat_name=stat_top10_2013$stat_name), FUN=sum)
names(dat2)[2] <- "on_tot"

#노선번호 추가하기
dat2 <- merge(dat2, subname, by.x = "stat_name", by.y="STATION_NM")

#지도 그리기
Map_Seoul <- get_map(location=c(lon=126.97, lat=37.55), zoom=11, maptype="roadmap")

MM <- ggmap(Map_Seoul)

MM3 <- MM+geom_point(aes(x=YPOINT_WGS, y=XPOINT_WGS, size=on_tot,
  alpha=0.6, colour="blue", data=dat2)

MM3 + scale_size_area(name=c("탑승객수"), max_size=15)+ 
  geom_text(aes(x=YPOINT_WGS, y=XPOINT_WGS, label=stat_name),
  colour="red", vjust=3, size=3.5,
  fontface="bold", data=dat2)+
  labs(x="경도", y="위도")
