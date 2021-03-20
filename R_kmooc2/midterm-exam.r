#중간고사
#5
# d <- c(1,4,7,3,8,9)
# print(d[-c(1,3)])

#7
# print(mean(d))

#10
# print(ncol(iris))

#11
# print(getRows(iris,Species="Setosa"))
# print(getRows(iris,Species is "Setosa"))
# print(subset(iris,Species is "Setosa"))
# print(subset(iris,Species=="Setosa"))

#14
# sum <- 0
# for(i in 1:10) {
#   if (i%%2 == 0) {
#     sum <- sum+i
#   }
# }
# print(sum)

#15
# for(i in 1:100) {
#   ss <- ss + i
# }
# print(ss)

#16
mydiv <- function(x,y=2) {
  result <- x/y
  return(result)
}
print(mydiv(10,5)+3)