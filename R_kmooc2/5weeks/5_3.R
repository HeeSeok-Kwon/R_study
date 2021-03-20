#선 그래프
#두 변수 중 하나가 시간 축일 때

month = 1:12
late = c(5,8,7,9,4,6,12,13,8,6,6,4)
# plot(month, #x축
# late, #y축
# main="Late students", #graph title
# type="l", #그래프 종류 선택 (b:점과선,s:계단형,o:점 위의 선,h:값에 해당하는 수직선,S:계단형2)
# lty=1, #선의 종류(1~6)
# lwd=1, #선의 굵기
# xlab="Month",
# ylab="Late cnt")

#복수의 선그래프 그리기
#하나의 선그래프 그린 후에 그 위에 다른 선그래프를 겹쳐 그리는 방식
late1 = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)

plot(month, #x축
late, #y축
main="Late students", #graph title
type="b", #그래프 종류 선택 (b:점과선,s:계단형,o:점 위의 선,h:값에 해당하는 수직선,S:계단형2)
lty=1, #선의 종류(1~6)
col="red",
xlab="Month",
ylab="Late cnt")
#그려진 그래프 위에 다시 그리는 그래프
lines(month,
late2,
type="b",
col="blue")
