##List, factor##
##list : 여러 자료형의 데이터를 섞어서 저장
# member <- list(name='kim',address='pusan',tel='010-1234-5678',age=20, married=F)
# print(member)
# print(member[[1]])
# print(member$name)

# 특정 종류의 값만 나올 수 있게 막는 함수가 factor()
blood.type <- factor(c("A","AB","O","B"))
# print(blood.type)
# print(is.factor(blood.type))
# blood.vec <- c("A","AB","O","B")
# print(blood.vec)
# blood.type[6] <- "D"
# print(blood.type)
# print(as.numeric(blood.type))
print(levels(blood.type))
print(levels(blood.type)[2])
# read.csv로 파일을 읽으면 문자열 column을 factor로 가져옴