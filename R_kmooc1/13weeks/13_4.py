#1순위 : 산술연산자
#2순위 : 관계연산자
#3순위 : 논리연산자
# 연산 순서 인위적 설정 --> ()

#if --> 조건절 후, 명령어 쓸때 들여쓰기(4개 공백)

#while 조건절 :
#for 변수 in 데이터 범위 :

(5+10)*15/5*10

(5+10*15)/5-10

7+8 > 8*6

7+8 > 8*6 and 5/2 == 2.5

not(7+8 > 8+6 and 5/2 == 2.5)

age = 20
if age >= 19:
  print("성인입니다.")
else :
  print("미성년입니다.")

if age <= 12 :
  print("어린이입니다.")
elif age < 19 :
  print("미성년입니다.")
else :
  print("성인입니다.")

score = 90
if score >= 90:
  print("Your grade is A")
elif score >= 80 :
  print("Your grade is B")
elif score >= 70 :
  print("Your grade is B")
else :
  print("Your grade is F")

i = 0
while i < 10:
  print(i)
  i = i+1

for i in range(10) : #range(시작값, 끝값+1, 단위)
  print(i)

sum = 0
i = 1
while i <= 10 :
  sum += i
  i += 1
print('1부터 10까지 더한 결과 =>',sum)


sum = 0
i = 1
while i <= 10:
  sum += i
  print("i(반복횟수) :",i,', sum(중간합계:',sum)
  i += 1
print("-----------------------------")
print('1부터 10까지 더한 결과 =>',sum)
print("-----------------------------")