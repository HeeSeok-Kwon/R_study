st<-data.frame(state.x77)
st
rownames(st)
colnames(st)
dim(st)

rowSums(st)
rowMeans(st)
colSums(st)
colMeans(st)
#6 st의 요약 정보를 보이시오.
str(st)
unique(iris[,"Species"])
table(iris[,"Species"])
st["Florida",]
st[,"Income"]
st["Texas","Area"]
st["Ohio",c("Population","Income")]

subset(st,)

#13. 인구가 5000 이상인 주의 데이터만 보이시오.
subset(st, Population >= 5000)
#14. 수입이 4500 이상인 주의 인구, 수입, 면적을 보이시오.
subset(st[,c("Population","Income","Area")], Income >=4500)
#15. 수입이 4500 이상인 주는 몇 개인지 보이시오.

#16. 전체면적(area)이 100000 이상이고 결빙일수(frost) 가 120 이상인 주의 정보를 보이시오.
subset(st, Area>=100000 & Frost>=120)
#17. 문맹률(illiteracy)이 2.0 이상인 주의 평균 수입은 얼마인가?
mean(subset(st, Illiteracy >= 2.0)[,"Income"])
# 18. 문맹률(illiteracy)이 2.0 미만인 주와  2.0 이상인 주의 평균 수입의 차이를 보이시오.
m1 <- mean(subset(st, Illiteracy >= 2.0)[,"Income"])
m2 <- mean(subset(st, Illiteracy < 2.0)[,"Income"])
m1-m2
#19. 기대수명(life.exp)이 가장 높은 주는 어디인가?
rownames(subset(st, Life.Exp == max(Life.Exp)))
#20. Pennsylvania 보다 수입이 높은 주들을 보이시오
rownames(subset(st, Income > st["Pennsylvania","Income"]))
