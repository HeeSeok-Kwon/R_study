#모자이크 플롯

#132명의 조현병 환자
# hospital <- read.csv("C:/Rworks/hospital.csv")
# head(hospital)
# table(hospital)
# mosaicplot(~freq+stay,data=hospital,color=c("red","blue","green"), #TRUE
# main="병원내원빈도vs치료기간")

# tbl <- table(hospital) #교차표 형태
# mosaicplot(tbl,data=hospital,color=TRUE, main="병원내원빈도vs치료기간")

# print(Titanic)
mosaicplot(Titanic, color=T,off=5)

mosaicplot(Titanic, 
main="Survival on the Titanic",
color=c("red","green"),
off=1)