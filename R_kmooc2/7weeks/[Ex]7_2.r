st <- data.frame(state.x77)
radius <- st$Population
symbols(st$Income, st$Illiteracy,#x,y좌표값
circles=radius, #원의 반지름 길이
inches=0.4, #원의 크기 조절값
fg="white", #원의 테두리 색
bg="green",#원의 바탕색
lwd=1.5,
xlab="Income",
ylab="Illiteracy",
main="US State Data")

text(st$Income, st$Illiteracy,#텍스트가 출력될 x,y 좌표
rownames(st),#출력할 텍스트
cex=0.8,#폰트 크기
col="black")#폰트 color