#문자열 함수
#paste() -> 문자열을 연결하여 하나로 만들 때 사용
print(paste("Good","Morning","Tom",sep=" "))
print(paste("Good","Morning","Tom",sep="/"))
print(paste(1:10,"is good",sep=" ")) # 한 벡터에 들어감

#substr() -> 문자열 자르기
# str <- "Good Morning"
# print(substr(str,1,4))
# print(substr(str,6,nchar(str)))
#nchar() -> 문자열 길이

#gsub() -> 문자열 바꾸기
# str <- "Good Morning"
# print(gsub("Good","nice",str))
# str <- gsub(" ","/",str)
# print(str)