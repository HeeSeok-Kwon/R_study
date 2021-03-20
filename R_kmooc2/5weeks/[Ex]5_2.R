#1
# Income <- c(125000,100000,40000,35000,41000,29000,35000,24000,50000,60000)
# YoE <- c(19,20,16,16,18,12,14,12,16,17)
# tbl <- as.data.frame(cbind(Income,YoE))
# print(class(tbl))
# plot(Income~YoE,data=tbl)
# res = lm(Income~YoE,data=tbl)
# abline(res)
# print(cor(Income,YoE))

#2
GPA <- c(3.1,2.4,2.0,3.8,2.2,3.4,2.9,3.2,2.7,2.5)
TVhpw <- c(14,10,20,7,25,9,15,13,4,21)
tbl <- data.frame(cbind(GPA,TVhpw))
plot(GPA~TVhpw,data=tbl)
res <- lm(GPA~TVhpw,data=tbl)
abline(res)
print(cor(GPA,TVhpw))