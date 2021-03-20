#k-means clustering

#Euclidean distance d(p,q)

kmeans(x, #수치형 데이터 matrix
centers, # 몇 개의 데이터 그룹으로 나눌 것인가
iter.max = 10, #그룹 중심점을 찾기 위한 최대 반복 횟수
nstart = 1, #초기 그룹 중심점을 임의로 잡을 때 몇개의 점을 이용할 것인가
#가상의 중심점을 잡을 때, 1개의 데이터만 고려
algorithm = c("Hartigan-Wong","Lloyd","Forgy","MacQueen")) #사용 알고리즘

# 그래서 저 k-means를 돌리면 되는데 nstart,
# 저 값을 1로 하면 뭐냐면 예를 들면 중심점을 2개를 아까는 임의로 잡았잖아요.
# 2개를 임의로 잡아야 한다고 했을 때 그것을 2차원 공간상에서 잡는다고 그러면
# 아무데나 찍는 것이 아니라 그냥 있는 값 중에서 하나를 중심으로 보는 거예요, 하나를 이렇게.
# 그것이 1이고요.
# 2이다, 그러면 임의로 잡는데 한 점을 잡는 것이 아니라 2개의 점을 임의로 골라서 그것의 중심을 가상의 중심점으로 잡는 그런 방식입니다.



require(graphics)
#create a 2-dimensional example
x <- rbind(matrix(rnorm(100, sd = 0.3), ncol = 2), #정규분포 점 100개 추출(표준편차 0.3, 2줄로)
           matrix(rnorm(100, mean = 1, sd = 0.3), ncol = 2))
colnames(x) <- c("x","y")
cl <- kmeans(x,2)
cl #show clustering result

plot(x, col = cl$cluster)
points(cl$centers, col = 1:2, pch = 8, cex = 2) #중심점

cl <- kmeans(x, 5, nstart = 25)
plot(x, col = cl$cluster)
points(cl$centers, col = 1:5, pch = 8)
