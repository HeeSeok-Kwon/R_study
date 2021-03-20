###문자함수###
.libPaths()
.libPaths("C:/Rworks/Library")
install.packages("stringr")
library(stringr)

fruits <- c('apple','Apple','banana','pineapple')
과일 <- c('사과','바나나','감귤','파인애플')

str_detect(fruits,'A')
str_detect(과일,'감')
감들어간과일 <- str_detect(과일,'감')

str_detect(fruits,'^a')
fa <- fruits[str_detect(fruits,'^a')]
fa
class(fa)

str_detect(fruits,'a$')
str_detect(fruits,'[aA]')

faA <- fruits[str_detect(fruits,'[aA]')]
faA
과일2 <- 과일[str_detect(과일,'[사감]')]

str_count("제주대학교","대")
str_count(fruits,'a')

str_c("대한민국","제주도")
str_c(fruits,"대한민국")
str_c("대한민국",fruits)
str_c("대한민국","","제주도","제주대")

str_length("대한민국")

str_locate("Korea Jeju","Jeju")
str_locate("대한민국 제주도","제주")
str_locate("대한민국 제주도",' ')

str_replace("대한민국 제주도 제주시","대한민국","Korea")

str_split("대한민국/제주도/제주시/제주대학교",'/')
str_split("대한민국 제주도 제주시 제주대학교",' ')

s <- str_split("대한민국 제주도 제주시 제주대학교",' ')
class(s)
s[[1]]
s[[1]][1]

p <- str_split("대한민국 제주도 제주시 제주대학교",' ')
class(p)
temp<- str_c(과일,'/좋아요')
temp
t <- str_split(temp,'/')
t[[1]][1]
t[[1]][2]
t[[2]][1]
t[[2]][2]

substr("대한민국",3,4)

str_c("제주도","제주시")
str_c(str_trim("제주도 "),"제주시")

###유동인구 데이터의 읍면동 이름 추출###
setwd("C:/R 실습")
fpop <- read.csv("fpop_data.csv",stringsAsFactors=F)
fpop
str(fpop)
head(fpop$PNU_NAME,n=1)

s_pnu_name <- str_split(fpop$PNU_NAME, ' ')

s_pnu_name[[1]][1]
s_pnu_name[[1]][2]
s_pnu_name[[1]][3]
s_pnu_name[[1]][4]
s_pnu_name[[1]][5]

length(s_pnu_name)

temp <- data.frame(A3 = s_pnu_name[[1]][3], stringsAsFactors=F)

for(i in 2:nrow(fpop)) {
  t<-data.frame(A3 =s_pnu_name[[i]][3], stringsAsFactors=F)
  temp <- rbind(temp,t)
}

for(i in 2: nrow(fpop)){
  t <- data.frame(A3 = s_pnu_name[[i]][3], stringsAsFactors=F)
  temp <- rbind(temp, t)}

fpop_new <- cbind(fpop,temp)
