##7weeks 1st##
x<-c(1,2,3)
x
first_name<-c("Kim","seo","park")
y<-c("김","이",3,T)
num<-seq(3,7,2)
num
num100<-seq(1,100,2)
num100
length(num)
length(num100)
seq(1,100,1)
seq(1:100)

rep(1:2, times=5)
test <- rep(1:2, times=5)
test
rep(1:2,each=5)

first_name[1]

person1<-first_name[1]
person2 <- first_name[2]

age<-c(20,23,21)
names(age)<-c("kim","seo","park")
age[kim]
age["kim"]

identical(age, first_name)
age1<-age
identical(age, age1)
s1<-seq(1,100,1)
s2<-seq(1:100)
s2<-s1
identical(s1,s2)
setequal(s1,s2)
#identical 완전히 동일한지 여부 검사
#setequal 같은 집합인지 여부 검사
union(age, first_name)
u_test<-union(age, first_name)

"lim"%in%u_test
"kim"%in%u_test
"김"%in%u_test

?setequal

##7weeks 2nd##
s1<-list(이름="홍길동",몸무게=70)
s1

student <-list(성명="홍길동", 나이=20, 친구=c("춘향이","임꺽정"),
                 학과 = list(학과명="경영정보", 소속대학="경상대학"))
student
student$학과$학과명
student[4]
student[[4]]
student[[2]][1]
student[[3]]
student[3][1]
student[[3]][1]
student[[4]][2]

x<-matrix(c(1,2,3,4,5,6,7,8,9), ncol=3)
x
y<-matrix(c('a','b','c','d','e','f'),ncol=2,dimnames = NULL)
y
z = matrix(c(1,2,3,4,5,6,7,8,9), ncol=3, dimnames=list(c("r1", "r2", "r3"), c("c1", "c2", "c3")))
z
colnames(z) <- c("열1","열2","열3")
z
z["r1","열3"]
z[1,3]
z

test<- z+1
test

z
test
test2<-z+test
test2
test3<-test%*%test2
test3
nrow(test3)
ncol(test3)
dim(test3)
test4<-t(test3)
test4

A<-matrix(c(2,1,0,0,1,2,1,2,1),ncol=3)
A
B<-t(A)
B
C<-solve(A)
C
