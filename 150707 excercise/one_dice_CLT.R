

#one dice 500times and their solve means 100times

for (i in 1:1000){
  n=500
  x <- sample(1:6, n, replace = T)
  mx <- mean(x)
  mean_x[i] <- mx
}

mean_x 
hist(mean_x, freq=F)

mean(mean_x)
sd(mean_x)

#Compare normal line
xv <-seq(1,6,0.01)
yv <- dnorm(xv,mean=mean(mean_x), sd=sd(mean_x))
lines(xv,yv)
