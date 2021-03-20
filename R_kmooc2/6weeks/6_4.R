#apply 계열 함수
#R을 쓸 때 while 권장하지 않음

# for(i in 1:4){
#   print(mean(iris[,i]))
# }

#사용자 정의 함수도 가능
# print(apply(iris[,1:4],2,mean)) #열 방향 작업
# print(apply(iris[,1:4],1,mean)) #행 방향 작업

# lapply() -> 결과가 list format
# print(lapply(iris[,1:4],mean))

abc <- list(mtcars[,1],mtcars[,2],mtcars[,3],mtcars[,4])
# print(lapply(abc,mean))
# print(lapply(abc,mean)[[1]])

# sapply() -> 실행결과를 벡터, 리스트로 선택
# print(sapply(iris[,1:4],mean))
# print(sapply(iris[,1:4],mean,simplify=F)) #결과가 list

myfunc <- function(x) {
  a <- max(x)
  b <- min(x)
  return (a-b)
}

print(sapply(iris[,1:4],myfunc))