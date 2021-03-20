st <- data.frame(state.x77)
colnames(st)
boxplot(st$Population)
boxplot(st$Income)
boxplot(st$Illiteracy) #이상치 없음
boxplot(st$Life.Exp) #이상치 없음
boxplot(st$Murder) #이상치 없음
boxplot(st$HS.Grad) #이상치 없음
boxplot(st$Frost) #이상치 없음
boxplot(st$Area)

out.val <- boxplot.stats(st$Population)$out
st$Population[st$Population %in% out.val] = NA

out.val <- boxplot.stats(st$Income)$out
st$Income[st$Income %in% out.val] = NA

out.val <- boxplot.stats(st$Area)$out
st$Area[st$Area %in% out.val] = NA

st

st2 <- st[complete.cases(st),]
st2