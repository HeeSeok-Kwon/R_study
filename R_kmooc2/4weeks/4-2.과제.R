edu <- infert$education
unique(edu)
table(edu)
par(mfrow=c(1,1))
barplot(table(edu), main="Education")
