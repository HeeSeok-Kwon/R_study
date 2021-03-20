#데이터 전처리
#결측값(missing value) : 데이터셋에서 입력이 누락된 값
#NA
#산술연산에 문제가 생김

# x <- c(1,2,3,NA,5,8)
# print(sum(x))
# print(sum(x,na.rm=T)) #결측값을 제외하고 연산

# z <- c(1,2,3,NA,5,NA,8)
# print(is.na(z))
# print(sum(is.na(z)))

# z[is.na(z)] <- 0 #NA를 0으로 치환
# print(z)

# x <- c(1,2,3,NA,5,8)
# print(x)
# y<-as.vector(na.omit(x)) #결측값을 생략하라
# print(y)

### 2차원 배열 NA ###

x <- iris
x[1,2] <- NA; x[1,3]<-NA
x[2,3] <- NA; x[3,4]<-NA
# print(head(x))

col_na <- function(y) { #y:컬럼 값(벡터)
  return (sum(is.na(y))) #y벡터에 포함된 NA 카운트
}
na_count <- sapply(x, FUN=col_na) #칼럼을 하나하나 잘라서 인풋으로 넣어라
print(na_count);

print(is.na(x)) #데이터셋 전체
print(rowSums(is.na(x))) #행별 NA 개수
print(sum(rowSums(is.na(x))>0)) #NA가 포함된 행의 개수

NA를 포함한 행을 제외하고 새로운 데이터 생성
print(head(x))
print(x[!complete.cases(x),])
y <- x[complete.cases(x),]
print(head(y))

#결측값을 처리하는 가장 쉬운 방법은 없애는 것
#분석할 데이터가 거의 없는 경우 발생
#근사값 추정

library(mice) #결측값을 추정하는 함수가 포함된 패키지
md.pattern(x) #결측값이 포함된 2차원 데이터프레임

#결측값을 숫자값으로 치환하는 함수
result <- mice(x, m=5, maxit=50,method='pmm',seed=500)
impute_x <- complete(result,2)
head(x)
head(impute_x)
head(iris)