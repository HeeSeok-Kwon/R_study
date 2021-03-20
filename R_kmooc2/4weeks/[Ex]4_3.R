score <- c(90,85,73,80,85,65,78,50,68,96)
names(score) <- c("KOR","ENG","MATH","HIST","SOC","MUSIC","BIO","EARTH","PHY","ART")
#2
#print(score)
#3
#print(mean(score))
#4
#print(median(score))
#5
#print(sd(score))
#6
# for (i in 1:10) {
#   if (score[i] == max(score)){
#     print(names(score[i]))
#   }
# }
#7
#boxplot(score,ylab="Score")
#8
#hist(score, main="Hong's score", col="purple")

#################################################
#9
# print(mean(mtcars$wt))
# print(median(mtcars$wt))
# print(mean(mtcars$wt,trim=0.15))
# print(sd(mtcars$wt))
#10
#print(summary(mtcars$wt))
#11
#print(table(mtcars$cyl))
#12
#barplot(table(mtcars$cyl))
#13
# par(mfrow=c(1,3))
# hist(mtcars$wt,main="mtcars.wt")
# barplot(table(mtcars$cyl),main="mtcars.cyl")
# barplot(table(mtcars$gear),main="mtcars.gear")
#14
boxplot(mtcars$wt, main="mtcars.wt", ylab="Weight")
#15
boxplot(mtcars$disp,ylab="disp")


