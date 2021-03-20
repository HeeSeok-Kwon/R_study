head(state.x77)
st <- data.frame(state.x77)
plot(Murder~Illiteracy, data=st)
model <- lm(Murder~Illiteracy, data=st) #dist:종속변수, speed:독립변수
model
coef(model)[1] #b
coef(model)[2] #W

Illiteracy <- 0.5
Murder <- 4.257*Illiteracy+2.397
print(Murder)

Illiteracy <- 1.0
Murder <- 4.257*Illiteracy+2.397
print(Murder)

Illiteracy <- 1.5
Murder <- 4.257*Illiteracy+2.397
print(Murder)