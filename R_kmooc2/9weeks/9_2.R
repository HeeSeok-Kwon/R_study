library(ggmap)
gc <- geocode(enc2utf8("용인")) #지점의 위도경도
cen <- as.numeric(gc) #경도위도를 숫자로 : 벡터로 저장
map <- get_googlemap(center=cen, #지도의 중심(벡터)
                    maptype="roadmap", #지도의 형태
                    marker=gc) # 마커의 위치(데이터프레임)
ggmap(map) #지도 화면에 보이기

#여러 지역 마커 표시하기
library(ggmap)
library(ggplot2)

names <- c("용두암","성산일출봉","정방폭포","중문관광단지","한라산110고지","차귀도")
addr <- c("제주시 용두암길 15",
          "서귀포시 성산읍 성산리",
          "서귀포시 동홍동 299-3",
          "서귀포시 중문동 2624-1",
          "서귀포시 색달동 산1-2",
          "제주시 한경면 고산리 125")
gc <- geocode(enc2utf8(addr))
df <- data.frame(name=names,
                  lon=gc$lon,
                  lat=gc$lat)
df
view(df)

cen <- c(mean(df$lon),mean(df$lat))
map <- get_googlemap(center=cen,
                      maptype="roadmap",
                      zoom=10,
                      size=c(640,480),
                      marker=gc)

ggmap(map) #지도, 마커 화면 보이기


gmap <- ggmap(map) #명소 이름 지도 위에 표시하기
gmap+geom_text(data=df, 
              aes(x=lon,y=lat), #글씨 위치 
              size=5, #글씨 크기
              label=df$name) #글씨 내용
