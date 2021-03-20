#1
n = int(input("구구단의 단수를 입력하세요 : "))
print("%d단을 출력합니다."%n)
for i in range(1,10) :
  print("%d*%d=%d"%(n,i,n*i))


#2
def sum(n,m):
  print("sum 함수에 인자값 전달 : sum(%d,%d)"%(n,m))
  print("%d과 %d의 덧셈결과는 %d+%d=%d입니다.\n"%(n,m,n,m,n+m))
  

def sub(n,m):
  print("sub 함수에 인자값 전달 : sub(%d,%d)"%(n,m))
  print("%d과 %d의 뺄셈결과는 %d-%d=%d입니다.\n"%(n,m,n,m,n-m))

def div(n,m):
  if(m == 0) : 
    print("나눌 수 없는 숫자입니다.\n")
    return
  print("div 함수에 인자값 전달 : div(%d,%d)"%(n,m))
  print("%d과 %d의 나눗셈결과는 %d/%d=%d입니다.\n"%(n,m,n,m,n/m))

def mul(n,m):
  print("mul 함수에 인자값 전달 : mul(%d,%d)"%(n,m))
  print("%d과 %d의 덧셈결과는 %d*%d=%d입니다.\n"%(n,m,n,m,n*m))

sum(3,4)
sub(3,4)
div(3,4)
div(3,0)
mul(3,4)

