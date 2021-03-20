par(mfrow=c(1,3))
boxplot(Temp~Month, data=airquality,
col="orange",
border="red",
#ylim=c(60,90),
ylab="Temp",
xlab="Month Number",
main="Different boxplots for each month")

boxplot(Wind~Month, data=airquality,
col="yellow",
border="red",
#ylim=c(5,20),
ylab="Wind",
xlab="Month Number",
main="Different boxplots for each month")

boxplot(Ozone~Month, data=airquality,
col="gray",
border="black",
#ylim=c(0,150),
ylab="Ozone",
xlab="Month Number",
main="Different boxplots for each month")
