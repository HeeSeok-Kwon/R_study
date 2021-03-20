st <- data.frame(state.x77)
st[order(st$Population),]

st[order(st$Income,decreasing = T),]

st_name <- rownames(head(st[order(st$Illiteracy),], n=10))
cbind(st_name, head(st[order(st$Illiteracy),], n=10)$Illiteracy)
