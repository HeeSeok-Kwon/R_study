d1<-1:50
d2<-51:100
#1
d1
d2
#2
d1+d2
d2-d1
d1*d2
d2/d1
#3
sum(d1)
sum(d2)
#4
sum(d1+d2)
#5
max(d2);min(d2);
#6
mean(d2)
mean(d1)
mean(d2) - mean(d1)
sort(d1, decreasing = TRUE)

sort(d1, decreasing = TRUE)[1:10]
sort(d2, decreasing = TRUE)[1:10]
d3 <- sort(c(sort(d1, decreasing = TRUE)[1:10], sort(d2, decreasing = TRUE)[1:10]), decreasing =  TRUE)
d3


v1<-51:90
v1[v1<60]
length(v1[v1<70])
sum(v1[v1>65])
v1[v1>60 & v1<73]
v1[v1<65 | v1>80]
v1[v1%%7 == 3]
sum(v1[v1%%2 == 0])
v1[v1%%2 == 1 | v1>80]
v1[v1%%3==0 & v1%%5==0]
v1[v1%%3==0]
v1[v1%%5==0]
