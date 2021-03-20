#12-3.탑승객 상위역 분석 및 시각화
#역별 지하철 탑승객 수 데이터의 시각화
tot <- aggregate(subway2[,"on_tot"], by=list(stat_name=subway2$stat_name), FUN=sum)
tot
#tot, subname merge
cc = merge(x=tot, y=subname, by.x="stat_name", by.y="STATION_NM")
df2 <- data.frame(stat_name=cc$stat_name, line_num=cc$LINE_NUM, on_tot=cc$x)

#노선별로 정렬
#그래프 그리면 노선번호별로 역이 모이도록 하기 위함
df2 <- df2[with(df2, order(line_num)),]
df2 <- df2[order(df2$line_num),]

df2$stat_name <- factor(df2$stat_name, levels=df2$stat_name)

head(subway2)[,2:4]

plt <- ggplot(df2, aes(x=stat_name, y=on_tot, fill=line_num,order=line_num))
plt+theme_bw() + geom_bar(stat="identity", colour="white")+
  scale_x_discrete("지하철역", labels=NULL)+
  ylab("탑승객수")+
  scale_fill_discrete(name=c("노선"))


#탑승객 수 상위 10개역 데이터 시각화
df3 <- df2[order(-df2$on_tot),] #내림차순 정렬
df2 <- df3[1:10,]
df3$stat_name <- factor(df3$stat_name, levels=df3$stat_name)

lim <- c(0, max(df3$on_tot)) # y축 높이?
plt <- ggplot(df3, aes(stat_name, y=on_tot, fill=line_num))
plt+geom_bar(stat="identity", colour="white")+
  xlab("상위 10개 지하철역")+
  scale_y_continuous("탑승객수",lim=lim)+
  scale_fill_discrete(name=c("노선"))

#탑승객 수 하위 10개역 데이터 시각화
df4 <- df2[order(df2$on_tot),] #오름차순 정렬
df2 <- df4[1:10,]
df3$stat_name <- factor(df4$stat_name, levels=df4$stat_name)

lim <- c(0, max(df4$on_tot)) # y축 높이?
plt <- ggplot(df4, aes(stat_name, y=on_tot, fill=line_num))
plt+geom_bar(stat="identity", colour="white")+
  xlab("상위 10개 지하철역")+
  scale_y_continuous("탑승객수",lim=lim)+
  scale_fill_discrete(name=c("노선"))

#탑승객 상위 10개역의 2013년도 월별 승객 추이

#상위 10개역의 이름 수집(from df3)
#메인 데이터셋(subway2)에서 상위 10개역의 2013년도 데이터 추출
#월별, 역별 데이터 집계
#그래프 작성

#상위 10개역 이름
ten.station <- df3$stat_name

#상위 10개역 2013년 자료
tmp <- subset(subway2, subset=stat_name %in% ten.station & year=='2013', 
select=c("stat_name", "on_tot","month"))

#월별, 역별 집계
stat_top10_2013 <- aggregate(tmp$on_tot,
  by=list(month=tmp$month,
  stat_name=tmp$stat_name),
  FUN=sum)

names(stat_top10_2013)[3] = "on_tot"

#월별, 역별 그래프
plt <- ggplot(stat_top10_2013, aes(x=month, y=on_tot, colour=stat_name, group=stat_name))

plt <- plt+theme_classic()+geom_line()+geom_point(size=6, shape=19, alpha=0.5)

plt + scale_x_discrete("2013년", 
  labels=paste0(unique(as.numeric(month)), "월"))+
  ylab("월별 탑승객수")+
  scale_colour_discrete(name=c("지하철역"))



#탑승객 하위 10개역의 2013년도 월별 승객 추이

#하위 10개역 이름
ten.station <- df4$stat_name

#하위 10개역 2013년 자료
tmp <- subset(subway2, subset=stat_name %in% ten.station & year=='2013', 
select=c("stat_name", "on_tot","month"))

#월별, 역별 집계
stat_top10_2013 <- aggregate(tmp$on_tot,
  by=list(month=tmp$month,
  stat_name=tmp$stat_name),
  FUN=sum)

names(stat_top10_2013)[3] = "on_tot"

#월별, 역별 그래프
plt <- ggplot(stat_top10_2013, aes(x=month, y=on_tot, colour=stat_name, group=stat_name))

plt <- plt+theme_classic()+geom_line()+geom_point(size=6, shape=19, alpha=0.5)

plt + scale_x_discrete("2013년", 
  labels=paste0(unique(as.numeric(month)), "월"))+
  ylab("월별 탑승객수")+
  scale_colour_discrete(name=c("지하철역"))