# two dice of sum experiments
     
x1 <- sample(1:6, 10, replace = T)
y1 <- sample(1:6, 10, replace = T)   


result1 <- x1+y1

hist(result1,freq=F)


x2 <- sample(1:6, 100, replace = T)
y2 <- sample(1:6, 100, replace = T)   


result2 <- x2+y2

hist(result2)

x3 <- sample(1:6, 10000, replace = T)
y3 <- sample(1:6, 10000, replace = T)   


result3 <- x3+y3

hist(result3, freq=F)



#plot cdf
plot.ecdf(result3)


#create and plot normal dist
n <- rnorm(1000)
hist(n)
hist(rnorm(10000,mean=10, sd=10))

#
n <- 100
mean_h <- 70
sd_h <- 3.3
mike_h <- 5.7
jim_h <- 6.4

pnorm(1, mean=3, sd=5)
pn<-pnorm(-.8944)
find_v <- 1-pn
hist(rnorm(1000, mean=3,sd=5))

