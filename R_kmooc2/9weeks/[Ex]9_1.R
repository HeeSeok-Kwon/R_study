library(ggmap)
gc1 <- geocode(enc2utf8("서울시청")) #지점의 경도위도 : 인터넷 연결되어 있어야 함
cen1 <- as.numeric(gc1) #경도위도를 숫자로
map1 <- get_googlemap(center=cen1,
                    zoom=8,
                    size=c(800,600),
                    maptype="roadmap") #지도생성 : 구글지도 가져오기
ggmap(map1) #지도 화면 보이기

gc2 <- geocode(enc2utf8("금강산")) #지점의 경도위도 : 인터넷 연결되어 있어야 함
cen2 <- as.numeric(gc2) #경도위도를 숫자로
map2 <- get_googlemap(center=cen2,
                    zoom=8,
                    size=c(640,480),
                    maptype="hybrid") #지도생성 : 구글지도 가져오기
ggmap(map2) #지도 화면 보이기

cen3 <- c(103.867881, 1.331017)
map3 <- get_googlemap(center=cen,maptype="roadmap")
ggmap(map3)