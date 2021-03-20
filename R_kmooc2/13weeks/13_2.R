#중선형회귀
#혈당 수치를 예측하기 위한 변수는?

#연봉을 교육년수, 여성비율, 평판으로 분석
#연봉 예측 모델
#특정 직군의 연봉을 3가지 변수(교육년수, 여성비율, 평판)를 가지고 예측
#데이터셋 : car 패키지의 Prestige
library(car)
head(Prestige)

newdata <- Prestige[,c(1:4)]
plot(newdata, pch=16, col="blue", main = "Matrix Scatterplot")

#연봉 예측 모델
mod1 <- lm(income~education + prestige + women, data=newdata)
summary(mod1)

#모델 유의미 판단
#별의 개수, p-value(값이 작을수록 좋음)
#Adjusted R-sqaured -> 모델이 income(종속변수)을 얼마나 설명할 수 있는가, 0~1, 1에 가까울수록 설명력이 높음

#변수 선택 
#종속변수를 잘 설명할 수 있는 변수들을 선택
#자동 방법
library(MASS)
newdata2 <- Prestige[,c(1:5)]
head(newdata2)
mod2 <- lm(income ~ education + prestige + women + census, data=newdata2)
step <- stepAIC(mod2, direction="both")

mod3 <- lm(income ~ prestige + women, data=newdata2)
summary(mod3)
#단순할수록 좋은 모델