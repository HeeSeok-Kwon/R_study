mymax <- function(x,y,z){
  max <- x
  if(x <= y) {
    if(y >= z) {max<-y}
    else {max<-z}
  }
  else if(x <= z) {
    if(z >= y) {max<-z}
    else {max<-y}
  }
  return (max)
}

n <- c()
i <- 1
for(i in 1:3){
  n[i] <- as.integer(readline(prompt="매개변수를 입력하세요:"))
}
print(mymax(n[1],n[2],n[3]))

myCalc <- function(x,y){
  sum <- x+y
  mul <- x*y
  return (c(sum,mul))
}

m <- c()
for(i in 1:2){
  m[i] <- as.integer(readline(prompt="숫자를 입력하세요:"))
}

print(myCalc(m[1],m[2]))
