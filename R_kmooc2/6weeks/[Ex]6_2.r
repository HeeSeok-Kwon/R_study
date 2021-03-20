#1
# count <- 0
# sum <- 0
# for(i in 1:100) {
#   if(i%%3 == 0) {
#     sum <- sum + i
#     count <- count + 1
#   }
# }
# cat(sum, count)

#2
# for(j in 101:200) {
#   if(j%%3==0 & j%%4==0){
#     print(j)
#   }
# }

#3
# n<-24
# for(r in 1:n) {
#   if(n%%r == 0){
#     print(r)
#   }
# }

#4
# m<-10
# result<-1
# while(m>0){
#   result <- result*m
#   m<-m-1
# }
# print(result)
# print(10*9*8*7*6*5*4*3*2*1)

#5
# count<-0
# first<-0
# sec<-1
# become <- 0
# while(count != 40){
#   if(count<=1) {
#     print(count)
#   }
#   become <- first+sec
#   print(become)
#   first<-sec
#   sec<-become
#   count <- count + 1
# }