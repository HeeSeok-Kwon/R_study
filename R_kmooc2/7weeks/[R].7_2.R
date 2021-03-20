.libPaths()
.libPaths("C:/Rworks/Library")

library(MASS)
head(UScrime)
radius <-sqrt(UScrime$Pop) #인구 수가 너무 커서

symbols(UScrime$U2, UScrime$y,#x,y좌표값
        circles=radius, #원의 반지름 길이
        inches=0.4, #원의 크기 조절값
        fg="white", #원의 테두리 색
        bg="lightgray",#원의 바탕색
        lwd=1.5,
        xlab="unemployment 35-39 males",
        ylab="crime rate",
        main="UScrime Data")

text(UScrime$U2, UScrime$y,#텍스트가 출력될 x,y 좌표
     1:nrow(UScrime),#출력할 텍스트
     cex=0.8,#폰트 크기
     col="brown")#폰트 color
