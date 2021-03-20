z <- matrix(1:20, nrow=4, ncol=5)
print(z)

z2 <- matrix(1:20, nrow=4, ncol=5, byrow=T)
#print(z2)

x <- 1:4
y <- 5:8

m1 <- cbind(x,y) #열방향 결합
m2 <- rbind(x,y) #행방향 결합
m3 <- rbind(m2,x)
m4 <- cbind(z,x)

#print(m1)
#print(m2)
#print(m3)
#print(m4)

#print(z[2,3]) #2행 3열에 있는 값
#print(z[1,4])
#print(z[2,])
#print(z[,4]) #vector가 됨

print(rownames(z))
print(colnames(z))
rownames(z) <- c("row1","row2","row3","row4")
colnames(z) <- c("col1","col2","col3","col4","col5")
#print(z)
print(z[,"col3"])
print(z["row2",])