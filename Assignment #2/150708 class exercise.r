#std error area
pnorm(2) - pnrom(-2)


#t test
mean <- 2.09
s <- 1.644
n <- 175

t0 <- (mean -2)/(s/sqrt(n))
t0


control = c(91,87,99,77,88,91)
treat = c(101,110,103,93,99,104)

t.test(control, treat, alternative="less", var.equal=TRUE)
