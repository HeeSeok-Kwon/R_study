#원천데이터 - 제주지역유동인구 데이터(그룹기반 처리)
#가공처리 - 읍면동별 유동인구 합계 계산(문자열 처리 함수, 반복문, 파이썬 그룹처리)
#결과데이터 - 분석결과의 시각적 표현(group_fpop.csv(구분자 콤마))
#시각화 --> 선 그래프 표현, 마커그래프 표현, 바둑판 배열 서브그래프 표현

## 유동인구 데이터 분석 ####
import pandas as pd
fpop = pd.read_csv('d:/lect/fpop_data.txt', encoding='CP949')
type(fpop)         # 데이터형
fpop.index         #각 행별 색인번호
fpop               # 전체 데이터 보기
fpop.describe()    #통계요약
fpop.columns   # 데이터프레임의 열(컬럼) 출력
fpop.PNU_NAME    #PNU_NAME 열값 출력
type(fpop.PNU_NAME )  #Serise 타입 => Series 데이터형의 요소접근(인덱싱) 방법 숙지
pname = fpop.PNU_NAME
pname[1:100] # 1에서 99번째 행의 지역이름 출력
pname[5][0:7]
pname[7][0:10]       # 7번째 행의 지역이름 출력
pname[1:100][0:10]   #제대도 실행 안됨
i = 0
A1 = []    # Area 1: 도단위 (리스트 데이터)
A2 = []    # Area2 : 시단위
A3 = []    # Area3 : 읍면동 단위
while i < len(fpop):
    temp = pname[i].split()   # 지역이름은 공백 기준으로 분리하여 리스트형으로 돌려줌 => Series형의 split()함수 사용
    A1.insert(i,temp[0]) # '제주특별자치도' 추출후 a1 리스트변수에 추가
    A2.insert(i,temp[1]) # '제주시'or '서귀포시' 추출후 a2 리스트변수에 추가
    A3.insert(i,temp[2]) #  읍명동 추출후 a3 리스트변수에 추가
    i = i + 1
type(A1)
len(A1)
#len(data)
fpop['A1'] = A1                  # fpop(유동인구 데이터)에 A1 열 추가
fpop['A2'] = A2   # fpop(유동인구 데이터)에 A2 열 추가
fpop['A3'] = A3   # fpop(유동인구 데이터)에 A3 열 추가
fpop.columns       # 추가된 열 확인
group_fpop = fpop.groupby(['A3']).sum()     #데이터프레임 fpop에서 A3열을 기준으로 그룹핑 및 합계계산
type(group_fpop)
group_fpop.columns
group_fpop
len(group_fpop )
그룹핑_fpop.ix[2]['M10']   #읍면동 두번째 지역의 남자 10대 유동인구수 출력
### 73개  읍면동 별 MAN(남자), WOMAN(여자), TOTAL(전체) 유동인구수 계산
### 반복문 사용####################################################
i = 0
TOTAL = []
WOMAN = []
MAN = []
while i < len(group_fpop):
    each_MAN = group_fpop.ix[i]['M10'] + group_fpop.ix[i]['M20']+ group_fpop.ix[i]['M30']+ group_fpop.ix[i]['M40']+ group_fpop.ix[i]['M50']+group_fpop.ix[i]['M60']
    MAN.insert(i,each_MAN)
    each_WOMAN = group_fpop.ix[i]['W10'] +group_fpop.ix[i]['W20']+ group_fpop.ix[i]['W30']+ group_fpop.ix[i]['W40']+ group_fpop.ix[i]['W50']+ group_fpop.ix[i]['W60']
    WOMAN.insert(i,each_WOMAN)  
    each_TOTAL = each_MAN + each_WOMAN
    TOTAL.insert(i,each_TOTAL)     
    i = i + 1
group_fpop['MAN'] = MAN
group_fpop['WOMAN'] = WOMAN
group_fpop['TOTAL'] = TOTAL
group_fpop
group_fpop_new =group_fpop[['M10','M20', 'M30','M40','M50','M60','W10','W20','W30','W40', 'W50', 'W60', 'MAN', 'WOMAN', 'TOTAL' ]]
group_fpop_new.to_csv('d:/lect/group_fpop.csv', encoding='CP949')
###############################################################
#시각화
################################################################
import matplotlib  as mpl
import matplotlib.pyplot as plt
%matplotlib inline  #그래프를 주파터노트북 상에서 출력
group_fpop= pd.read_csv('d:/lect/group_fpop.csv', encoding='CP949')
type(group_fpop)
group_fpop
plt.figure(figsize=(20,10))
plt.xlabel("읍면동")
plt.ylabel(" 유동인구수")
plt.title(" 제주지역 읍변동 별 유동인구 분포")
plt.plot(group_fpop.A3, group_fpop.TOTAL)
plt.plot(group_fpop.A3, group_fpop.TOTAL, 'bo')
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