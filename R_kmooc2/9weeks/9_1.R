#특정 지역 지도보기
#package : ggmap, ggplot2
install.packages(ggmap)
library(ggmap)
gc <- geocode(enc2utf8("용인")) #지점의 경도위도 : 인터넷 연결되어 있어야 함
cen <- as.numeric(gc) #경도위도를 숫자로
map <- get_googlemap(center=cen) #지도생성 : 구글지도 가져오기
ggmap(map) #지도 화면 보이기

#get_googlemap #설명
#center         지도의 중심좌표
#zoom           지도의 확대크기로서 3(대륙)~21(빌딩), 기본값은 10(도시)
#size           지도의 가로와 세로 픽셀 크기, 기본값은 640*480(c(640,640))
#maptype        출력될 지도유형, 기본값은 terrain(지형도)

library(ggmap)
gc <- geocode(enc2utf8("설악산")) #지점의 경도위도 : 인터넷 연결되어 있어야 함
cen <- as.numeric(gc) #경도위도를 숫자로
map <- get_googlemap(center=cen,
                    zoom=8,
                    size=c(640,480),
                    maptype="hybrid") #지도생성 : 구글지도 가져오기
ggmap(map) #지도 화면 보이기

cen <- c(-118.233248, 34.085015)
map <- get_googlemap(center=cen)
ggmap(map)

