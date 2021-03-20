Sys.setenv(JAVA_HOME="C:\\ProgramFIles||Java\\jdk1.8.0_101")
install.packages("stringr")
install.packages("sqldf")
library(stringr)
library(sqldf)
setwd("D://lect")

fpop <- read.csv("fpop_data.txt",stringsAsFactors=F)
fpop
str(fpop)
head(fpop$PNU_NAME,n=5)

s_pnu_name <- strsplit(fpop$PNU_NAME,'') #지역이름을 공백('')을 기준으로 분리
s_pnu_name[[1]][1]
s_pnu_name[[1]][2]
s_pnu_name[[1]][3]
s_pnu_name[[1]][4]
s_pnu_name[[1]][5]

class(s_pnu_name)
s_pnu_name
length(s_pnu_name)

s_pnu_name[[1]]
s_pnu_name[[2]]
s_pnu_name[[3]]
s_pnu_name[[4]]
s_pnu_name[[5]]
s_pnu_name[[6]]
s_pnu_name[[6]]

s_pnu_name[[1]][3]
s_pnu_name[[2]][3]
s_pnu_name[[3]][3]
s_pnu_name[[4]][3]
s_pnu_name[[5]][3]
s_pnu_name[[6]][3]

test <- as.data.frame(s_pnu_name)

#첫 번째 지역의 지역 full이름 리스트에서 3번째 요소(한림읍)를 데이터프레임으로 변환 => rbind연산 적용 목적

temp <- data.frame(A3 = s_pnu_name[[1]][3],stringsAsFactors=F)

#두 번째 지역부터 57832번째 지역(nrow(fpop)까지 반복처리)
#=>리스트 3번째 요소를 데이터프레임 변환 후, rbind
#=> 시간 걸림 => 약 1분 소요

for(i in 2: nrow(fpop)) {
  t <- data.frame(A3 = s_pnu_name[[1]][3],stringsAsFactors=F)
  temp <- rbind(temp,t)
}

fpop_new <- cbind(fpop, temp)
str(fpop_new)
colnames(fpop_new)

tail(temp)

읍면동합계 = sqldf("select PNU_NAME, A3, 
sum(M10), sum(M20), sum(M30),sum(M40),sum(M50),sum(M60),
sum(W10), sum(W20), sum(W30),sum(W40),sum(W50),sum(W60) 
from fpop_new
group by a3")

head(읍면동합계)
str(읍면동합계)
읍면동합계 = data.frame(fn=읍면동합계$PNU_NAME,
A3 = 읍면동합계$A3,
M10 = round(읍면동합계$'sum(M10)',digits=0),
M20 = round(읍면동합계$'sum(M20)',digits=0),
M30 = round(읍면동합계$'sum(M30)',digits=0),
M40 = round(읍면동합계$'sum(M40)',digits=0),
M50 = round(읍면동합계$'sum(M50)',digits=0),
M60 = round(읍면동합계$'sum(M60)',digits=0),
W10 = round(읍면동합계$'sum(W10)',digits=0),
W20 = round(읍면동합계$'sum(W20)',digits=0),
W30 = round(읍면동합계$'sum(W30)',digits=0),
W40 = round(읍면동합계$'sum(W40)',digits=0),
W50 = round(읍면동합계$'sum(W50)',digits=0),
W60 = round(읍면동합계$'sum(W60)',digits=0)
)

head(읍면동합계)
str(읍면동합계)

MS = 읍면동합계$M10+읍면동합계$M20+읍면동합계$M30+읍면동합계$M40+읍면동합계$M50+읍면동합계$M60
WS = 읍면동합계$W10+읍면동합계$W20+읍면동합계$W30+읍면동합계$W40+읍면동합계$W50+읍면동합계$W60
TS = MS + WS
TS
읍면동합계=cbind(읍면동합계,MAN=MS,WOMAN=WS,TOTAL=TS)
View(읍면동합계)
write.csv(읍면동합계,'A3_sum.txt')