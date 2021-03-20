colnames(iris)
myiris <- list(Group=iris[,"Species"], Data=st[,c(1,2,3,4)])
myiris[[1]]
myiris[[2]]               

weekdays <- factor(c("Son","Mon","Tue","Wed","Thu","Fri","Sat"))
as.numeric(weekdays)
weekdays
