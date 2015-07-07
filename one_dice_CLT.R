

#one dice 1000times and their solve means 100times

for (i in 1:100){
  n=1000
  x <- sample(1:6, n, replace = T)
  mx <- mean(x)
  mean_x[i] <- mx
}

mean_x
hist(mean_x)
