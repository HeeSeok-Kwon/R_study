#함수 : 프로그램 모듈
def sum1_to_n(n):
  sum = 0
  i = 1
  while i <= 10:
    sum = sum+i
    print('i(반복횟수) :',i,'sum(중간합계) :',sum)
    i = i + 1
  return sum

def sum1_to_n(n):
  sum = 0
  i = 1
  while i <= n:
    sum = sum+i
    print('i(반복횟수) :',i,'sum(중간합계) :',sum)
    i = i + 1
  print('------------------------------')
  print('1부터 ',n,'까지 더한 결과=>',sum)
  print('------------------------------')

def test(x):
  y = x + 10
  return y

test(10)
test(30)
#데이터를 화면에 출력 --> print("홍길동")
#0부터 (n-1)까지의 정수 범위 설정 --> range(10)
#모듈(관련된 함수들의 모임), 패키지(관련된 모듈들의 모임) --> importing

in1 = input("첫번째 수를 입력하세요")
in2 = input("두번째 수를 입력하세요")
result = int(in1) + int(in2)
print("결과값=>",result)