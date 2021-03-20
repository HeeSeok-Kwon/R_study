# print(str(state.x77))
# print(colnames(state.x77))

st <- data.frame(state.x77,state.region)
#print(head(st))
#print(state.region)
#print(str(st))

# print(str(st))
# print(class(st))
# print(head(st))
# print(dim(st))
# print(table(st$state.region))

# print(summary(st[,1]))
# print(summary(st[,2]))
# print(summary(st[,"Life.Exp"]))
# print(summary(st[st$state.region]))

# print(sd(st[,1]))
# print(sd(st[,2]))
# print(sd(st[,3]))
# print(sd(st[,4]))

# par(mfrow=c(2,2))
# boxplot(Population~state.region,data=st,
# main ="Population")
# boxplot(Income~state.region,data=st,
# main ="Income")
# boxplot(Illiteracy~state.region,data=st,
# main ="Illiteracy")
# boxplot(Life.Exp~state.region,data=st,
# main ="Life.Exp")


# print(dim(st))
point <- as.numeric(st$state.region)
#print(point)
color <- c("red","green","blue","yellow")
pairs(st[,-c(5:9)],
pch=c(point),
col=color[st[,9]])