sungjuk <- data.frame(name=c("홍길동","김길동","박길동"), kuk=c(80,97,85), eng=c(94,100,97))
# print(sungjuk)
# print(str(sungjuk))

sungjuk1 <- data.frame(name=c("홍길동","김길동","박길동"), kuk=c(80,97,85), eng=c(94,100,97), stringsAsFactors=FALSE)
print(sungjuk1)
print(str(sungjuk1))

# print(sungjuk$name)
# print(sungjuk$kuk)
# print(sungjuk$kuk[1])
# print(sungjuk$kuk[2])
# print(sungjuk$kuk[3])
# print(sungjuk$kuk[4])

# print(sungjuk[2,])
# print(sungjuk[,2])
# print(sungjuk[2,1])
고객 <- data.frame(번호=c(1,2,3,4,5),이름=c("홍길동","춘향이","심청이","임꺽정","
김길동"),주소=c("서울","부산","대구","광주","제주"))
test<-data.frame(a=1:1000,b=seq(1,2000,2))
# print(head(test))
# print(tail(test,n=3))

# print(class(sungjuk))
# print(class(test))
# print(class(sungjuk$kuk))
# print(class(test$a))

# print(is.data.frame(sungjuk))
# print(is.data.frame(test))

# m_sungjuk <- as.matrix(sungjuk)
# print(class(m_sungjuk))
# print(m_sungjuk)


