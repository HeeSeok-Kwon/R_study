#일반적인 방법
agg <- aggregate(iris[,-5], by=list(iris$Species),FUN=mean)
agg
#formular방식
agg <- aggregate(.~Species, data=iris, FUN=mean)
agg
?aggregate
