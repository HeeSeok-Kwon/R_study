library(mice)
ds <- ampute(iris[,1:4], 0.2)$amp

col_na <- function(y) { #y:컬럼 값(벡터)
  return (sum(is.na(ds))) #y벡터에 포함된 NA 카운트
}
na_count <- sapply(ds, FUN=col_na) #칼럼을 하나하나 잘라서 인풋으로 넣어라
print(na_count);

print(is.na(ds)) #데이터셋 전체
print(rowSums(is.na(ds))) #행별 NA 개수
print(sum(rowSums(is.na(ds))>0)) #NA가 포함된 행의 개수

#NA를 포함한 행을 제외하고 새로운 데이터 생성
print(head(ds))
print(ds[!complete.cases(ds),])
ds.new <- ds[complete.cases(ds),]
print(head(ds.new))
