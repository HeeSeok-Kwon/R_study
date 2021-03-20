#1
# year <- 2015:2026
# population <- c(51014,51245,51446,51635,51811,51973,32123,52261,52338,52504,52609,52704)

# plot(year,
# population,
# type="b",
# lty=1,
# lwd=1,
# xlab="Year",
# ylab="Population")

#2
qtr <- c(20144,20151:20154,20161:20164,20171:20173)
#print(qtr)
men <- c(73.9,73.1,74.4,74.2,73.5,73.0,74.2,74.5,73.8,73.1,74.5,74.2)
women <- c(51.4,50.5,52.4,52.4,51.9,50.9,52.6,52.7,52.2,51.5,53.2,53.1)

plot(qtr,
men,
main="Economic activity participation rate for men and women",
type="l",
lty=1,
col="red",
xlab="quarter",
ylab="Economic activity participation rate",
ylim=c(50,80)
)

lines(qtr,
women,
type="l",
col="blue",
ylim=c(50,80))