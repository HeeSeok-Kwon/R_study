library(treemap)
data(GNI2014) #데이터 불러오기
str(GNI2014)  #데이터 가져오기
treemap(GNI2014,
        index=c("contient","iso3"), #계층구조
        vSize="population", #타일의 크기
        vColor="GNI", #타일의 컬러
        type="value", #타일 컬러링 방법 #vColor에서 지정한 색깔로 해라
        bg.labels="yellow") #레이블 배경색

GNI2014$GNI.total <- GNI2014$population*GNI2014$GNI
GNI2014.a <- aggregate(GNI2014[,4:6],by=list(GNI2014$contient),sum)
#4~6번째까지의 컬럼에 있는 값을 그룹 지어 집계
#대륙을 기준으로 합계를 내서 집계
GNI2014.a$GNI.percap <- GNI2014.a$GNI.total/GNI2014.a$population

treemap(GNI2014.a,
        index=c("Group.1"), 
        vSize="population", #타일의 크기
        vColor="GNI,percap", #타일의 컬러
        type="value", #타일 컬러링 방법 #vColor에서 지정한 색깔로 해라
        bg.labels="yellow") #레이블 배경색