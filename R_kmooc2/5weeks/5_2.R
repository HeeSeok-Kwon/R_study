#상관분석 : 두 개의 변수, 두 개의 양적 자료에 대한 분석 방법
#산점도와 함께 사용 -> -1 < r : 상관계수 < 1

# beers <- c(5,2,9,8,3,7,3,5,3,5)
# bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07,0.06,0.02,0.05)
# tbl <- data.frame(cbind(beers,bal))
# print(tbl); print(class(tbl))
# plot(bal~beers,data=tbl) #산점도
# -> plot(tbl[,1],tbl[,2]) 도 동일한 결과 도출됩니다.
# res=lm(bal~beers,data=tbl) #회귀식 도출
# abline(res) #회귀선 그리기
# print(cor(beers,bal))

#여러 변수들 간의 상관계수를 구하는 방법
print(cor(iris[,1:4]))
