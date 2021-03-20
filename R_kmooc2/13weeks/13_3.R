#로지스틱 회귀 : 범주형 종속변수의 예측에 이용(yes or no, patient or healthy)
#iris 데이터셋에서 4개의 측정데이터로부터 품종을 예측해보자
#범주나 그룹을 예측하는 분류 문제
head(irir) #종속변수가 숫자형이어야 함. 범주형 변수를 숫자로 변환
mod3 <- glm(as.integer(Species) ~., data=iris)
            #종속변수도 숫자화    #iris에서 품종정보 제외하고 나머지는 모두 독립변수
summary(mod3)

pred <- 1.18650 + 5.1*(-0.11191)+
  3.5*(-0.04008)+
  1.4*0.22865+
  0.2*0.60925
pred #반올림
unique(iris$Species)
as.integer(unique(iris$Species))

#여러 개의 데이터에 대해 예측할 때
unkown <- data.frame(rbind(c(5.1, 3.5, 1.4, 0.2)))
names(unkown) <- names(iris)[1:4]
unkown
mod3
pred <- predict(mod3, unkown)
pred
round(pred, 0)
#glm : 모델 생성, predict() : 예측

#여러 개의 데이터에 대해 예측할 때
test <- iris[,1:4]
pred <- predict(mod3, test)
pred
pred <- round(pred, 0)
pred

#예측 정확도 확인
pred == as.integer(iris[,5])
acc <- mean(pred == as.integer(iris[,5]))
acc

#로지스틱 회귀
#종속변수는 숫자형
#문자형 범주 데이터는 숫자로 변환
#팩터 타입의 범주형 데이터 as.integer함수로 변환
