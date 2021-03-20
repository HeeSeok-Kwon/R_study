#복합자료형
#리스트 : 요소값(순서가 있음), 색인번호에 의한 요소 접근, [], 요소 중 일부 접근하는 슬라이싱
#튜플 : ()사용, 요소 값 변경 불가, 빠른 접근이 장점, 튜플(슬라이싱,병합,데이터반복)
#세트 : {}사용, 집합과 동일 개념, 순서가 없고 중복X, 데이터 업데이트,삭제, 초기화, 집합연산
#딕셔너리 : key:value, {}사용, 요소(검색, 추가, 삭제, 정렬)

#리스트 생성
eng = [90,87,70]
eng
type(eng)
eng[0]
eng[2]
eng[3]

kuk=[89, 90, 87]

#리스트 요소로 또다른 리스트 설정 가능
성적 = [eng,kuk]
성적
성적[0]
성적[1]
성적[1][2]
#리스트 슬라이싱 [시작색인번호:끝색인번호-1]
성적[0:2]
성적[0:1]
#리스트 병합
total = eng+kuk
total
type(total)
#리스트요소 추가
eng.append(100)
eng
#리스트요소를 색인번호 위치에 추가
eng.insert(1, 99)
eng
#리스트요소 삭제
eng.remove(99) 
eng
eng.remove(100) 
eng
eng.append('백점')
eng
eng.insert(1,'구십구점')
eng
eng.remove('백점')
eng.remove('구십구점')
eng

max(eng)
min(eng)
eng.sort()
eng

#튜플데이터 생성
eng = (90, 87, 70)
eng
type(eng)

#튜플데이터 접근
eng[0]
eng[2]
eng[3] #error

kuk = [89, 90, 87]
성적 = (eng, kuk)
type(성적)
성적
성적[0][2]
type(성적[0])
성적[0][0] = 100
type(성적[1])
성적[1][0]=90

#특정 데이터 요소 갯수 계산
성적[1].count(90) #2
성적[1][2]
성적[1]
#반복출력
성적*5


#세트 데이터 생성 => {}사용
eng = {90, 87, 70}
#데이터 요소 추가
eng.add(88)
eng
#데이터요소 업데이트 => 여러개의 데이터요소 추가
eng.update([100,200,300,100,500])
eng
#데이터요소 삭제
eng.remove(88)
eng 
#데이터요소 초기화
eng.clear()
eng

eng = {90,100,99}
kuk = {89,78,65}
eng.intersection(kuk)
eng.union(kuk)
eng.difference(kuk)

#딕셔너리 생성
성적 ={"홍길동":90, "춘향이":99, "심청이":88}
성적
성적["심청이"]
#데이터요소 추가
성적["김길동"]=100
성적["김길동"]
성적.pop("김길동")
성적

#키값 정렬
sorted(성적)
성적1 = sorted(성적)
성적1
#값 정렬
점수 = sorted(성적.values())
점수
type(점수)

#복합자료형
#리스트 : 요소값(순서가 있음), 색인번호에 의한 요소 접근, [], 요소 중 일부 접근하는 슬라이싱
#튜플 : ()사용, 요소 값 변경 불가, 빠른 접근이 장점, 튜플(슬라이싱,병합,데이터반복)
#세트 : {}사용, 집합과 동일 개념, 순서가 없고 중복X, 데이터 업데이트,삭제, 초기화, 집합연산
#딕셔너리 : key:value, {}사용, 요소(검색, 추가, 삭제, 정렬)

#리스트 생성
eng = [90,87,70]
eng
type(eng)
eng[0]
eng[2]
eng[3]

kuk=[89, 90, 87]

#리스트 요소로 또다른 리스트 설정 가능
성적 = [eng,kuk]
성적
성적[0]
성적[1]
성적[1][2]
#리스트 슬라이싱 [시작색인번호:끝색인번호-1]
성적[0:2]
성적[0:1]
#리스트 병합
total = eng+kuk
total
type(total)
#리스트요소 추가
eng.append(100)
eng
#리스트요소를 색인번호 위치에 추가
eng.insert(1, 99)
eng
#리스트요소 삭제
eng.remove(99) 
eng
eng.remove(100) 
eng
eng.append('백점')
eng
eng.insert(1,'구십구점')
eng
eng.remove('백점')
eng.remove('구십구점')
eng

max(eng)
min(eng)
eng.sort()
eng

#튜플데이터 생성
eng = (90, 87, 70)
eng
type(eng)

#튜플데이터 접근
eng[0]
eng[2]
eng[3] #error

kuk = [89, 90, 87]
성적 = (eng, kuk)
type(성적)
성적
성적[0][2]
type(성적[0])
성적[0][0] = 100
type(성적[1])
성적[1][0]=90

#특정 데이터 요소 갯수 계산
성적[1].count(90) #2
성적[1][2]
성적[1]
#반복출력
성적*5


#세트 데이터 생성 => {}사용
eng = {90, 87, 70}
#데이터 요소 추가
eng.add(88)
eng
#데이터요소 업데이트 => 여러개의 데이터요소 추가
eng.update([100,200,300,100,500])
eng
#데이터요소 삭제
eng.remove(88)
eng 
#데이터요소 초기화
eng.clear()
eng

eng = {90,100,99}
kuk = {89,78,65}
eng.intersection(kuk)
eng.union(kuk)
eng.difference(kuk)

#딕셔너리 생성
성적 ={"홍길동":90, "춘향이":99, "심청이":88}
성적
성적["심청이"]
#데이터요소 추가
성적["김길동"]=100
성적["김길동"]
성적.pop("김길동")
성적

#키값 정렬
sorted(성적)
성적1 = sorted(성적)
성적1
#값 정렬
점수 = sorted(성적.values())
점수
type(점수)

