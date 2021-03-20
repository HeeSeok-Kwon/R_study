#12-1
#데이터셋 소개
#각 지하철 역별 승하차 정보 (2010년~2013년)
#K-ICT  빅데이터 센터 - http://kbig.kr
#어떤 과정, 어떤 흐름을 통해 분석하느냐?
#subway.csv subway_latlong.csv

#12-2
#데이터셋 읽어오기 및 전처리
library(ggplot2)
library(ggmap)
setwd("C:/Rworks")#데이터셋 경로지정
subway <- read.csv("subway.csv", header=TRUE, stringsAsFactors=FALSE, encoding="UTF-8") 
#stringsAsFactors:문자열 데이터는 그대로 두라는 명령문
head(subway)
str(subway)
#incomedate 변수를 표준 날짜형식으로 전환
class(subway[,"income_date"]) <- "character"
subway[,"income_date"] <- as.Date(subway[,"income_date"], format="%Y%m%d")
unique(format(subway[,"income_date"],"%Y")) #데이터에서 연도만 추출

idx <- format(subway[,"income_date"],"%Y") == "2014"
unique(format(subway[idx,"income_date"],"%m"))
subway2 <- subset(subway, subset = format(income_date, "%Y") != "2014")

#역명 구조 관찰 -->환승역 통일
sort(unique(subway2[,'stat_name']))
#역명에 ()가 포함된 행을 검색한다.
idx <- grep("\\(",subway2$stat_name)
unique(subway2$stat_name[idx])
#()를 제거한다. 역명에서 뒤의 3글자 제거
subway2$stat_name[idx] = substr(subway2$stat_name[idx], 1, nchar(subway2$stat_name[idx])-3)

#연도, 월 칼럼 추가
year <- format(subway2$income_date, "%Y")
month <- format(subway2$income_date, "%m")
subway2 <- cbind(subway2, year, month)
head(subway2)

#2014년도 7월까지 밖에 없어서 제외
#숫자형태의 날짜 칼럼, date 포멧으로 변경
#역명에서 노선을 나타내는 ()제거
#연도, 월 칼럼 추가

subname <- read.csv('subway_latlong.csv', header=TRUE, stringsAsFactors=FALSE)
subname