#1
df <- data.frame(id=c(10,20,30,40,50),name=c("John","Tom","Paul","Jane","Grace"),
                 score=c(95,46,98,74,85))
df          
#2
df$score
df[,3]
df[,'score']
df['score']
#3
df['id']
df['score']
#4
df[2:3,]
#5
df[2,3]
