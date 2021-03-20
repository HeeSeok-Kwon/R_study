# print(5/3)
# print(13%%6)
# print(13%/%6)
# print(10^2)
# print(sqrt(4))
# print(log2(10))
# print(log10(10))
# print(sin(10))
# print(cos(10))

# x<-3
# if(x<10) {
#   print("10보다 작아요")
# }else {
#   print("10보다 커요")
# }

# y<-c(1,2,3,4,5)
# test <- ifelse(y %% 2 == 0, "짝수", "홀수")
# print(test)
# print(class(test))
# print(length(test))

# y<-c(1,2,3,4,5)
# ifelse(y%%2 == 0, print("짝수"), print("홀수")) --> 결과 이상함

# sum <- 0
# for(i in 1:10){
#   print(i) #i라는 스칼라값 하나에 적용(반복적으로)
#   sum <- sum + i
# }
# print(sum)

# sum1toN <- function(n){ #함수 정의
#   sum <- 0
#   i <- 1
#   while(i<=n){
#     sum <- sum + i
#     i <- i + 1
#   }
#   return(sum)
# }

# print(sum1toN(100))

# Greater <- function(a, b){
#   if(a>b){
#     max <-a
#   }
#   else {
#     max<-b
#   }
#   return (max)
# }
# print(Greater(10,11))