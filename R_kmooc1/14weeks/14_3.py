#Library
#정적 라이브러리 : 내장함수
#외장 라이브러리 : 아나콘다 내부에 포함, 아나콘다 내부에 없어서 추가 설치 필요
# Numpy, Pandas --> 설치된 외장 library, library이면서 패키지 일부

#외장라이브러리
#아나콘다 내부에 포함
# - 기능별로 구분하여 패키지화
#   -import [패키지명] as 축약단어
# - 아나콘다 내부에 설치된 패키지 목록확인
#   - https://docs.continuum.io/anaconda/packages/pkg-docs/

#외장라이브러리
#아나콘다 내부에 없어서 추가 설치
# - pip 사용하여 추가 설치 후, import 호출 사용
#   - 웹프로그래밍 분야 : Django 설치
#   - 데이터베이스 연동 : PyMySQL, SQL3 등 설치
#   - 기계학습 분야 : Tensorflow 설치
#   - 기타


#Numerical Python : Numpy
#import numpy
#ndarray형 (리스트형과 유사한 데이터형)
# - n차원 배열을 효율적으로 다룰 수 있음
#   - 합계, 평균, 표준편차, 최대/최소값, 제곱근 등 계산
# - 동일한 타입(숫자 또는 문자)의 데이터요소 가짐
#   - numpy.array([요소1, 요소2,...,요소n])
# - 다양한 배열 연산
#   - https://numpy.org/doc/1.17/user/index.html

#Pandas 패키지
#데이터분석을 할 때 많이 활용됨
#테이블(표) 구조의 데이터는
#데이터형 --> Series형, Data Frame형
#Series형 : 1차원 테이블, 1개의 열과 여러개의 행(index)으로 구성됨 numpy.array([요소1, 요소2,...,요소n]), 다양한 연산 가능(슬라이싱, 합계 등)
#DataFrame형 : 2차원 테이블, 여러 개의 열과 행으로 구성됨(pandas.DataFrame([열값들], columns=[열이름], index=[행별 색인값])), 다양한 연산 가능(슬라이싱, 합계, 열추가, 조인 등)

#Pandasql 패키지
#sqldf() 함수 사용
#dataframe형 데이터에 sql명령어를 적용할 수 있도록 함수

# import pandasql as ps
# pysqldf = lanbda q: ps.sqldf(q, globals())

# 주문고객=pysqldf("select * from 주문 group by 고객번호")

# 2.  아래의 파이썬 명령어를 아나콘다 환경에서 실행해 봅시다.
import numpy as np
#array 생성
math = np.array([90, 87, 98, 76, 99])
type(math)
#색인번호에 의한 슬라이싱
math[3:]
#합계
math.sum()
#표준편차
math.std()
#누적합계
math.cumsum()
#평균
math.mean()
#최대값
math.max()
#최소값
math.min()
math_arr = np.array([90, 87, 98, 76, 99, "A", "test"]) #=> 데이터요소가 모두 문자형으로 변환됨
#리스트구조
test = [1,2,'a']
math_lst= [90, 87, 98, 76, 99, "A", test]
math_lst
test = [1,2,'a']
math_arr2 = np.array([90, 87, 98, 76, 99, "A", test]) #=> 데이터요소가 모두 문자형으로 변환됨
math*2
np.sqrt(math)
eng = np.array([90, 87, 70, 89, 99])
math = np.array([90, 87, 98, 76, 99])
#math = np.array([90, 87, 98, 76, '99'])
성적 = np.array([eng, math])
성적.sum(axis=0)  #세로축(열) 연산
성적.sum(axis=1)  #가로축(행) 연산
import pandas as pd
# Series 형
SR학생성적 = pd.Series([90, 89, 87], index = ['홍길동', '춘향이', '심청이'])
# Series 형
temp = pd.Series([90, 89, 87])
temp
#색인번호에 의한 데이터요소 접근 -> 인덱싱
SR학생성적[0]
#index값에 의한 데이터요소 접근 -> 인덱싱
SR학생성적["홍길동"]
#슬라이싱 -> 색인번호 기반
SR학생성적[1:]
DF학생성적 = pd.DataFrame([90, 89, 97], columns=["영어"], index=[1,2,3])
type(DF학생성적)
DF학생성적.columns
DF학생성적.index
DF학생성적.ix[1] #error --> AttributeError: 'DataFrame' object has no attribute 'ix'
DF학생성적.sum()
DF학생성적*2
DF학생성적["이름"] = ("홍길동", "춘향이", "심청이")
# 열 추가
DF학생성적["수학"] = (100,100,100)
DF학생성적.sum()  #문자형 데이터는 concatenation연산
del DF학생성적["수학"]
DF1학생성적 = pd.DataFrame([100, 100, 97], columns=["수학"], index=[1,2,3])
DFJ학생성적 = DF학생성적.join(DF1학생성적)
#파이썬에서 SQL명령어의 활용
#from pandasql import sqldf
#pysqldf = lambda q: sqldf(q, globals())
#학생성적4 = pysqldf("select * from 학생성적3")
#파이썬에서 SQL명령어의 활용
import  pandasql as ps   
pysqldf = lambda q: ps.sqldf(q, globals())
SQL학생성적 = pysqldf("select * from DFJ학생성적")
SQL학생성적
SQL학생성적["소속"] = ("1반", "1반", "2반")
SQL1학생성적= pysqldf("select sum(영어) as 영어합계, avg(영어) as 영어평균 from SQL학생성적 group by 소속")
SQL1학생성적