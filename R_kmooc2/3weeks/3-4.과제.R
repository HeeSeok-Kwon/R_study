rich_state <- subset(as.data.frame(state.x77), Income >= 5000)
# class(state.x77)
write.csv(rich_state, "rich_state.csv", row.names=F,quote=F)

ds <- read.csv("rich_state.csv",header=T)
ds
