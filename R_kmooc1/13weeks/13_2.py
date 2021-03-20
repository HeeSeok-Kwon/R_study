#계산과 변수

#변수 이름 작성 규칙
# 문자, 숫자, 밑줄(_)로 단어 이름 만들어야 함
# 첫 글자는 숫자 못 옴
# 단어 내에 공백X
# 대소문자 구분
# 보관되는 데이터가 무엇인지 알 수 있도록 명명

found_gnug = 20
magic_gnug = 10
stolen_gnug = 3
print(found_gnug+magic_gnug*365/7-stolen_gnug*365/7)

##아나콘다에서 실행하기##
found_gnug = 20
magic_gnug = 10
found_gnug + magic_gnug * 365/7 
20+10*365/7
found_gnug = 20
magic_gnug = 10
stolen_gnug = 3
found_gnug + magic_gnug * 365 - stolen_gnug * 365/7
처음금덩이 = 20
마법금덩이 = 10
도둑맞은금덩이 = 3
처음금덩이 + 마법금덩이 * 365 - 도둑맞은금덩이 * 365/7
kor = "여기는 대한민국"
kor[2]
jeju = "여기는 제주도"
jnu = "여기는 제주대학교"
jnu[5]
kor + jeju + jnu
학생_학과 = '경영정보'
소속 ='제주대학교 %s 학과'
학생_소속 = 소속%학생_학과
학생_소속
sum = 0
i = 1
while i < 10 :
   sum = sum + i
   i = i + 1
print('1부터 10까지 더한 결과 =>', sum)