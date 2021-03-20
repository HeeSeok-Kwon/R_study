#노선별 분석 및 시각화
#노선별 역당 평균 탑승객 수의 계산 및 비교

#메인데이터셋(subway2)와 subname을 merge하여 노선 번호 가져옴
#노선별, 역별 탑승객 수 집계(sum)
#노선별 탑승객 수 평균 계산
#파이그래프 작성

#노선번호 얻어오기
subway3 <- merge(subway2, subname, by.x="stat_name", by.y="STATION_NM")

#노선별, 역별 탑승객 합계
tmp1 <- aggregate(subway3[,"on_tot"],
  by = list(LINE_NUM=subway3$LINE_NUM,
  stat_name=subway3$stat_name),
  FUN=sum,
  na.rm=TRUE)

names(tmp1)[3] = "on_tot"

#노선별 평균
tmp2 <- aggregate(tmp1[,"on_tot"],
  by=list(LINE_NUM=tmp1$LINE_NUM),
  FUN=mean,
  na.rm=TRUE)
names(tmp2)[2] = "on_tot"
head(tmp2)
tmp2

col <- c("red","springgreen2","orange","blue","purple","brown","khaki","deeppink","yellow","deepskyblue")

pie(tmp2$on_tot,
  labes=paste0(unique(tmp2$LINE_NUM),"호선"),
  col=col,
  border="lightgray",
  main="노선별 평균 지하철 탑승객 수")


#노선별 누적 승객 수의 상대비교
#영역 차트(area chart)로 시각화 하는 것이 목표
#노선에 있는 일부 역만을 이용하므로 결과 해석에 주의

#메인데이터셋과 subname을 merge한 subway3으로 작업
#년월 칼럼 추가
#호선별, 년월별로 탑승객 수 집계(sum)
#영역 chart 작성

names(subway3)

#year-month 칼럼 추가
yearmonth <- paste(subway3$year, subway3$month, "01", sep="-") #연-월-일
yearmonth <- as.Date(yearmonth)
tmp3 <- cbind(subway3, yearmonth)


#LINE_NUM 칼럼에 '호선' 붙이기
tmp$LINE_NUM <- paste0(tmp3$LINE_NUM,"호선")

#호선별, 년월별 집계(sum)
tmp4 <- aggregate(tmp3[,"on_tot"],
  by=list(LINE_NUM=tmp3$LINE_NUM,
  yearmonth=tmp3$yearmonth),
  FUN=sum,
  na.rm=TRUE)
names(tmp4)[3] = "on_tot"

#그래프 그리기
col <- c("red","springgreen2","orange","blue","purple","brown","khaki","deeppink","yellow","deepskyblue")

plt <- ggplot(tmp4, aes(x=yearmonth, y=on_tot, fill=LINE_NUM))
plt <- plt+geom_area(colour="white",size=0.2)
plt <- plt+scale_fill_manual(name="노선", values=col)
plt+theme_classic() + xlab("연도") + ylab("누적탑승객수")