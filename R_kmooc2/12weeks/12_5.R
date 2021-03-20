#시간대별 탑승객 수 분석
#전처리 : 문자로 된 칼럼을 숫자로 전환, NA제거 - 데이터가 없는 부분 삭제
toint <- apply(subway2[,5:24], 2, FUN=as.integer)
subway2[,5:24] <- toint #문자타입을 숫자로
subway.tmp = subway2

#remove NA rows
nrow(subway.tmp)
subway.tmp <- subway.tmp[complete.cases(subway.tmp),]
nrow(subway.tmp)

avg.on <- colMeans(subway.tmp[,5:24])
avg.on
avg.on <- round(avg.on, 0) #소수점 첫 번째 자리에서 반올림
avg.on

ggplot(data.frame(on_time = 5:24, no_on = avg.on),
  aes(x=on_time, y=no_on, color="red"))+
  geom_line(size=2)+
  xlab("시간대")+
  ylab("역당 평균탑승객 수")+
  theme(legend.position="none")

seok <- subset(subway.tmp, stat_name="석촌")
avg.on <- colMeans(seok[,5:24])
avg.on <- round(avg.on, 0)
ggplot(data.frame(on_time = 5:24, no_on = avg.on),
  aes(x=on_time, y=no_on, color="red"))+
  geom_line(size=2)+
  xlab("시간대")+
  ylab("석촌역 평균탑승객수")+
  theme(legend.position="none")

#노선별 시간대별 평균 탑승객 추이
library(reshape2) #for melt
sub.merge <- merge(x=subway.tmp, y = subname,
  by.x = "stat_name",
  by.y = "STATION_NM")

#호선별 탑승객 수
subway.agg <- aggregate(sub.merge[,5:24],
  by=list(line_num=sub.merge$LINE_NUM), FUN=mean,)

#그래프 작성에 적합하게 데이터형태 변형
melted <- melt(subway.agg, value.name="cnt")
names(melted)[2] <- "time.zone"
head(subway.agg)
head(melted)

#그래프 작성
plt <- ggplot(melted, aes(x=time.zone, u=cnt, colour=line_num, group=line_num))
plt <- plt+theme_classic() + geom_line() +
  geom_point(size=6, shape=19, alpha=0.5)

plt + scale_x_discrete("탑승시간대", labels=as.character(5:24))+
  ylab("평균 탑승객수")+
  scale_colour_discrete(name=c("호선"))

