#matplotlib
#파이썬에서 데이터를 차트나 플롯으로 그려주는 외장 라이브러리 패키지
#  - 산점도, 라인플롯, 히스토그램, 파이차트 등 표현
#  - https://matplotlib.org/users/index.html
#  - Pylot - matplot의 서브패키지로서 다양한 시각화 함수 포함

#pyplot.plot()
#선(line)이나 점(marker)을 이용하여 그래프를 표현
# 데이터 부분 : 
# 하나의 변수이면 x축에는 변수의 값의 색인번호가 대응되고, y축에는 변수 값의 크기가 대응됨
# 두개의 변수이면, 첫번째 변수의 요소 값과 두번쨰 변수의 요소 값이 쌍을 이루어 2차원 평면에 표현됨
#옵션 부분 :
# 표현 방식(선이나 점) 설정

#pyplot.xlim() 
# 그래프를 그릴 때 x축의 범위를 설정하는 함수
#pyplot.ylim()
# 그래프를 그릴 때 y축의 범위를 설정하는 함수
#pyplot.xlabel()
# 그래프를 그릴 때 x축의 이름을 설정하는 함수
#pyplot.ylabel()
# 그래프를 그릴 때 y축의 이름을 설정하는 함수
#pyplot.title()
# 그래프의 제목을 설정하는 함수
#pyplot.legend()
# 그래프를 그릴 때 범례를 표시하기 위한 함수
#pyplot.grid()
# 그래프를 그릴 때 격자(grid)의 표시여부 함수
#pyplot.subplot()
# 여러 개의 그래프를 그리기 위하여 출력 구조 출력

## 시각화 실습 ####
import pandas as pd
import numpy as np
import matplotlib  as mpl
import matplotlib.pyplot as plt      # matplotlib의 서브패키지로 MATLAB처럼 플롯을 그려주는 패키지
#%matplotlib inline               #matplotlib의 시각화 결과를 Ipython notebook안에서 출력하는 함수
 
iris = pd.read_csv('d:/lect/iris.csv', encoding='CP949')
iris
type(iris)
iris.columns
iris.SL
iris.SW
plt.plot(iris.SL)  # 1차원 분포 : Sepal.Length 꽃받침 길이 분포를 선으로 연결 표현
plt.plot(iris.SL, lw=5)   # lw : 선의 굵기
plt.plot(iris.SL, 'ro')  # Sepal.Length 꽃받침 길이 분포를 빨간 점으로 표현(r:red, o:circle)
plt.plot(iris.SL, iris.SW, 'bo')  # 2차원 Sepal.Length(꽃받침 길이)와 Sepal.Width(꽃받침넓이) 분포를 파란 점으로 표현(b:bule, o:circle)
plt.xlim(0, np.max(iris.SL))
plt.ylim(0, np.max(iris.SW))
plt.title("붓꽃의 꽃잎 길이와 넓이 관계")
plt.plot(iris.SL, iris.SW, 'bo')
######## 한글처리 ###############
from matplotlib import font_manager, rc
font_name = font_manager.FontProperties(fname="c:/Windows/Fonts/malgun.ttf").get_name()
#font_name = font_manager.FontProperties(fname="c:/Windows/Fonts/marlett.ttf").get_name()
rc('font', family=font_name)
###################################
plt.figure(figsize=(10,4))   #그래프크기 조정
plt.xlabel("꽃잎 길이")
plt.ylabel("꽃잎 넓이")
plt.title("붓꽃의 꽃잎 길이와 넓이 관계")
plt.plot(iris.SL, iris.SW, 'bo')
plt.figure(figsize=(10,4))
plt.plot(iris.SL, lw=1.5, label = '꽃받침')
plt.plot(iris.PL, lw=1.5, label = '꽃잎')
plt.legend(loc=4)                  # 범례 지정, loc:2 => upper left, 1:upper right, 3 : lower left, 4: lower right
plt.figure(figsize=(10,4))
plt.plot(iris.SL,'ro',  label = '꽃받침')
plt.plot(iris.PL, 'bo' ,label = '꽃잎')
plt.legend(loc=4)                  # 범례 지정, loc:2 => upper left, 1:upper right, 3 : lower left, 4: lower right
plt.grid(True)   #그래프에 격자 표시
plt.figure(figsize=(10,10))
plt.subplot(211)
plt.plot(iris.SL,'ro', label = '꽃받침')
plt.title("꽃받침길이 분포")
plt.subplot(212)
plt.plot(iris.PL, 'bo',label = '꽃잎')
plt.title("꽃잎길이 분포")
plt.figure(figsize=(10,10))
plt.subplot(221)
plt.plot(iris.SL,'ro')
plt.title("꽃받침길이 분포")
plt.subplot(222)
plt.plot(iris.PL, 'bo' )
plt.title("꽃잎길이 분포")
plt.subplot(223)
plt.plot(iris.SW,lw = 5)
plt.title("꽃받침 넓이 분포")
plt.subplot(224)
plt.plot(iris.PW, lw=2)
plt.title("꽃잎 넓이 분포")
group_fpop= pd.read_csv('d:/lect/group_fpop.csv', encoding='CP949')
type(group_fpop)
group_fpop
plt.figure(figsize=(20,10))
plt.xlabel("읍면동")
plt.ylabel(" 유동인구수")
plt.title(" 제주지역 읍변동 별 유동인구 분포")
plt.plot(group_fpop.A3, group_fpop.TOTAL)
plt.figure(figsize=(10,10))
plt.subplot(221)
plt.plot(group_fpop.A3, group_fpop.M10, 'yo')
plt.title("읍면동 별 남자 10대 분포")
plt.subplot(222)
plt.plot(group_fpop.A3, group_fpop.MAN, 'bo')
plt.title("읍면동 별 남자 분포")
plt.subplot(223)
plt.plot(group_fpop.A3, group_fpop.WOMAN, 'ro')
plt.title("읍면동 별 여자 분포")
plt.subplot(224)
plt.plot(group_fpop.A3, group_fpop.TOTAL, 'go')
plt.title("읍면동 별 전체 분포")