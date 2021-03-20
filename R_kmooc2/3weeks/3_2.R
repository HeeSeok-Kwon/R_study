city <- c("city","Tokyo","Washington")
rank <- c(1,3,2)
city.info <- data.frame(city,rank)
#print(city.info)
#print(city.info[3,1])
#print(city.info[2,])
#print(city.info[,1])

#dataset -> iris : R에서 제공하는 dataset

#print(is.data.frame(iris))
#print(iris[,"Species"]) # 가로 방향 -> vector
#print(iris["Species"]) # 세로 방향 -> data frame
#print(iris$Species) #matrix에는 적용 안 됨

#data frame, matrix에 동일 적용
#print(iris[,c(1:2)])
#print(iris[,c(1,3,5)])
#print(iris[,c("Sepal.Length","Species")])
#print(iris[1:50,])
#print(iris[1:50,c(1:3)])