# for(i in 1:10) {
#   print(i)
# }

#print와 동일한 기능
#cat 출력해야 될 값이 여러 개 일때, 그 값을 연결해서 출력할 때 사용
# for(i in 1:10) {
#   cat("2*",i,"=",2*i,"\n")
# }

# for(i in 1:20) {
#   if(i%%2==0) {
#     print(i)
#   }
# }

# v1<-101:200
# for(i in 1:length(v1)) {
#   if(v1[i]%%2==0) {
#     print(v1[i]*2)
#   }else {
#     print(v1[i]+2)
#   }
# }

# sum <- 0
# for(i in 1:100) {
#   sum <- sum +i
# }
# print(sum)
# cat("Total : ",sum)

##################################
# i<-1
# while(i<=10){
#   print(i)
#   i<-i+1
# }

# print(subset(iris,Sepal.Length >= 5.0 & Sepal.Length <= 6.0)[,1:2])
# -> data.frame

# idx <- c()
# print(idx)
# for(i in 1:nrow(iris)) {
#   if(iris[i, "Sepal.Length"] >= 5.0 & iris[i, "Sepal.Length"] <= 6.0 ) {
#     idx <- c(idx,i)
#   }
# }
# print(idx)
# print(iris[idx,c("Sepal.Length","Sepal.Width")])

# error 발생 -> ss<-0
for(i in 1:100) {
  ss <- ss + i
}
print(ss)