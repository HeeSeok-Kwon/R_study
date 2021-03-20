#데이터병합(merge)]
#공통 칼럼을 매개로 2개의 2차원 배열을 하나로 병합합
x <- data.frame(name=c("a","b","c"), math=c(90,80,40))
y <- data.frame(name=c("a","b","d"), korean=c(75,60,90))
x
y

merge(x,y,by=c('name'))


#공통 칼럼의 값이 다를 경우

#공통 칼럼의 값이 정확히 일치하지 않을 경우
merge(x,y, all.x=T) #x값 모두 추출

merge(x,y, all.y=T) #y값 모두 추출

merge(x,y, all=T)


#내용상 공통되지만 컬럼 이름이 다른 경우?
x <- data.frame(name=c("a","b","c"), math=c(90,80,40))
y <- data.frame(sname=c("a","b","d"), korean=c(75,60,90))
merge(x, y, by.x=c('name'), by.y=c('sname'))
#merge(y, x, by.y=c('sname'), by.x=c('name')) #error
