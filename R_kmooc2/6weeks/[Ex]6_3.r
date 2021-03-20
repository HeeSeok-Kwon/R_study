#1
# lgm <- function(x,y) {
#   min <- x
#   if(x>y) {min<-y}
#   max <- 0
#   for(i in 1:min){
#     if(x%%i==0 & y%%i==0){
#       max <- i
#     }
#   }
#   return (max)
# }

# result <- lgm(10,8)
# print(result)
# result <- lgm(10,20)
# print(result)

#2
# maxmin<-function(v) {
#   val.max <- max(v)
#   val.min <- min(v)
#   return (list(max=val.max,min=val.min))
# }

# v1<-c(7,1,2,8,9)
# result <- maxmin(v1)
# print(result)
# print(result$max); print(result$min)
# result <- maxmin(iris[,1])
# print(result$max); print(result$min)

# maxmin<-function(v) {
#   #mincount <- 0
#   for(i in 1:length(v)){
#     mincount <- 0
#     maxcount <- 0
#     for(j in 1:length(v)) {
#       if(v[i] <= v[j]){
#         mincount <- mincount + 1
#       }

#       if(v[i] >= v[j]) {
#         maxcount <- maxcount+1
#       }
#     }
#     if(mincount == length(v))
#     {
#       val.min <- v[i]
#     }
#     if(maxcount == length(v)) 
#     {
#       val.max <- v[i]
#     }
#   }
#   return (list(max=val.max,min=val.min))
# }

# v1<-c(7,1,2,8,9)
# result <- maxmin(v1)
# print(result)
# print(result$max); print(result$min)
# result <- maxmin(iris[,1])
# print(result$max); print(result$min)