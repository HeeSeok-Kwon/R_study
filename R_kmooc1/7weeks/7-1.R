x <- c(1,2,3)
print(x)
first_name <- c("kim","seo","park")
print(first_name)
y <- c("김","이", 3, T)
print(y)

num <- seq(3,7,2)
print(num)

num100 <- seq(1,100,2)
print(num100)

print(length(num))

#print(seq(1:100))
#print(rep(1:400, times=5))
personal <- first_name[1]
print(personal)

age <- c(20, 23, 21)
print(age[1])
names(age) <- c("kim","seo","park")
print(age[2])
print(age["seo"])

s1 <- seq(1:100) #seq(1:100,1) -> 오류
s2 <- seq(1:100)
print(setequal(s1, s2))
print(identical(s1, s2))

u_test <- union(age, first_name)
print(u_test)

print("lim" %in% u_test)
print("kim" %in% u_test)