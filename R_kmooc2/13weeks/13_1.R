#단순선형회귀
#데이터마이닝
#선형회귀 - 날씨 & 아이스크림 판매량
#단순 선형 회귀식 : y = Wx+b
#최소제곱법 : 오차의 제곱의 합이 가장 적은 선을 찾아가는 것

head(cars)
plot(dist~speed, data=cars)
model <- lm(dist~speed, cars) #dist:종속변수, speed:독립변수
model
coef(model)[1] #b
coef(model)[2] #W

speed = 30
dist = 3.932*speed - 17.579
print(dist)

speed = 35
dist = 3.932*speed - 17.579
print(dist)

speed = 40
dist = 3.932*speed - 17.579
print(dist)

#실제값과 예측값의 차이
speed <- cars[,1]
pred <- 3.932*speed - 17.579
pred
compare <- cbind(pred, cars[,2],abs(pred-cars[,2]))
compare

#회귀식 산점도
plot(dist~speed, data=cars)
abline(coef(model))
