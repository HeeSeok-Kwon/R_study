#워드 클라우드 : 관심 주제를 키워드 형태로 시각화하는 도구
#텍스트 마이닝 : 비정형 텍스트에서 의미 있는 정보를 찾아내는 기술 => 워드 클라우드
#package -> wordcloud(워드 클라우드 작성), KoNLP(한국어 처리), KRColorBrewer(단어의 색을 처리)
library(wordcloud)
library(KoNLP)
library(RColorBrewer)

useSejongDic() #세종한글사전 로딩 : 조사를 뗴고 명사만 추출
pal2 <- brewer.pal(8,"Dark2") #팔레트 생성
#text <- readLines(file.choose()) #파일 불러오기
text <- readLines("C:/Rworks/president_No.txt",encoding="UTF-8")
noun <- sapply(text, extractNoun, USE.NAMES=F) #파일의 각 행에서 명사만 추출 #list 형태
noun

noun2 <- unlist(noun) #추출된 명사 통합
wordcount <- table(noun2)
temp <- sort(wordcount, decreasing=T)[1:10]
temp
temp <- temp[-1] #빈도수가 가장 많은 공백 단어 제거
barplot(temp, las=2,names.arg=names(temp), col="lightblue", main="Most frequent words",
ylab="word frequencies")

#names -> 단어들 가져옴 
#scale : 단어 폰트 크기 
#min.freq : 단어의 최소 빈도
#random.order=F : 단어의 출력 위치 F : 빈도수가 높을수록 중앙에 배치
wordcloud(names(wordcount), #  단어들
freq = wordcount, # 단어들의 빈도
scale=c(6, 0.7), # 단어의 폰트 크기(최대, 최소)
min.freq=3, # 단어의 최소빈도
random.order=F, # 단어의 출력위치
rot.per=.1, # 90도 회전 단어 비율
colors=pal2) #단어색

#word cloud 매개변수
#word : 단어
#freq : 단어들의 빈도
#size : 빈도가 가장 큰 단어와 가장 작은 단어 폰트 사이의 크기 차이
#min.freq : 출력될 단어의 최소 개수
#max.freq : 출력될 단어의 최대 개수
#random.order : TRUE는 랜덤으로 단어 출력, FALSE는 빈도수가 클수록 중앙 배치
#random.color : TRUE는 단어 색이 랜덤 순으로, FALSE는 빈도 순으로 정해짐
#rot.per : 90도 회전 각도로 출력되는 단어의 비율
#colors : 가장 작은 빈도부터 큰 빈도까지의 단어 색

#빈도수가 높지만 사전에 없는 단어일 경우 추가
mergeUserDic(data.frame(c("정치"),C("ncn")))
noun <- sapply(text, extractNoun, USE.NAMES=F) 
                    # 추가한 단어들까지 수집
noun2 <- unlist(noun) #추출된 명사 통합 -> 벡터로 만든다.

#무의미한 단어 제거
noun2 <- noun2[nchar(noun2)>1] #한 글자 단어 제거
noun2 <- gsub("국민","",noun2) # 국민이라는 단어 블랭크 처리
noun2 <- gsub("여러분","",noun2) # 여러분이라는 단어 블랭크 처리

wordcount <- table(noun2)
wordcloud(names(wordcount), 
freq = wordcount, 
scale=c(6, 0.7), 
min.freq=3, 
random.order=F, 
rot.per=.1, 
colors=pal2)