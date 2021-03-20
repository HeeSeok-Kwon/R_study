#사용자 정의 함수
# mymax <- function(x,y) {
#   num.max <- x
#   if(y>x) {
#     num.max <- y
#   }
#   return(num.max)
# } 

# print(mymax(10,15))
# print(mymax(10,15))

#default value
# mydiv <- function(x,y=2) {
#   result <- x/y
#   return(result)
# }

# print(mydiv(x=10,y=3))
# print(mydiv(10,3))
# print(mydiv(10))


# myfunc <- function(x,y) {
#   val.sum <- x+y
#   val.mul <- x*y
#   return(list(sum=val.sum,mul=val.mul))
# }
# result <- myfunc(5,8)
# print(result$sum)
# print(result$mul)

# myfunc.r file save
#setwd("c:/Rworks")
#source("myfunc.r")
#함수 사용
#a<-mydiv(20,4)
#b<-mydiv(30,4)
#a+b
#mydiv(mydiv(20,2),5)