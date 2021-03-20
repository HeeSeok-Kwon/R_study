#함수 이름만 입력하면 코드 내용이 보임
#코드를 고쳐서 원하는 다른 함수 만들 수 있음


#파일에 결과 출력하기
sink("test.txt",append=T) #append=T 내용 뒤에 붙여서 출력하라
for(i in 1:100){
  print(i)
}
sink()