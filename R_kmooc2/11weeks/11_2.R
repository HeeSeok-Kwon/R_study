#이상치(outlier) : 정상 범위 밖의 값 --> 입력 실수이거나 실제 값

#이상치 탐색
#논리적으로 있을 수 없는 값을 찾아봄
#상식을 벗어난 값이 있는지 찾아봄
#boxplot을 통해 찾아봄

st <- data.frame(state.x77)
boxplot(st$Income)
print(boxplot.stats(st$Income)$out) #주별 수입

#각 칼럼의 이상치를 NA 처리 -> NA 포함 행 제거
out.val <- boxplot.stats(st$Income)$out
st$Income[st$Income %in% out.val] = NA
#어떤 주의 수입이 이상치 안에 있으면
#안에 있으면 out.val이 여러 값을 포함하는 경우도 있어 == 대신 %in% 을 사용
#여러 개와 비교하기 위해
print(st$Income)
new.data <- st[complete.cases(st),]
print(new.data)