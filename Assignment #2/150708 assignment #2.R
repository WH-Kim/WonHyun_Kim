# 150708 Assignment #2 
# WonHyun Kim

#1

scores <- c(90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,
            97,93,101,82,83,74,91,83,98,95,111,99,120,93,84)

#(a) 
mean(scores)

# answer : 92.2

#(b)
t.test(scores)$estimate == mean(scores)

# answer : TRUE 
# because sample data is same to population data

#(c)
sse <- sd(scores)/sqrt(length(scores))

sse
# answer : 1.976529

#(d)
# answer :  The spread of the sampling distribution of the sample mean.

#(e)
# score_m - 2se < u < score_+m + 2se

t.test(scores)$conf.int
# answer : 88.1574 ~ 96.24246

#(f)

# answer : 95% confidence interval is a range of values that 
#          95% certain contains the true mean of the population


#2
male <- c(220.1,218.6,229.6,228.8,222.0,224.1,226.5)
female <- c(223.4,221.5,230.2,224.3,223.8,230.8)

#descriptive statistics
mm <- mean(male)
fm <- mean(female)
sm <- sd(male)
sf <- sd(female)

mean <- c(mm,fm)
sd <- c(sm,sf)
s_data <- cbind(mean,sd)
plot(s_data)

#comparing two data
boxplot(male, female)


t.test(male, female)$null.value
# answer : using t-test null hypothesis is difference in means 0
t.test(male, female)$conf.int
# answer : -6.3867 ~ 3.5391


#3

# a. False, The p value say nothing about the size
# b. True, null hypothesis was rejected by p-value is less than significance level
# c. False, probability of type1 error is 0.05 
# d. False, size is not effective
# e. True, In this case,  p-value is less than significance level


#4
personA <- c(248,236,269,254,249,251,260,245,239,255)
personB <- c(380,391,377,392,398,374)


wilcox.test(1.5*personA, personB)
# answer : p-value is 0.1471 so can't reject null hypothesis
t.test(1.5*personA, personB)
# answer : p-value is 0.1417 so can't reject null hypothesis


#5 

# SDV is discript statistic that how much the data value vary from others
# SDE is derived from sampling distribution that how precisely you
# know the true mean of the population
# if SDE -> 0 then sampling mean is equal to population mean
# As n is many then sde go to zero
# SDE can be computed from a knowledge of sample attributes
# But, SD cannot be computed soley from sample attributes(it requires 
# knwoledge  of one or more population parameters)

#example

data <- seq(1:100)
n1 <- 10
n2 <- 50
sample_data1 <- sample(data,n1)
sample_data2 <- sample(data,n2)

sd <- sd(data)
se <- sd/sqrt(length(data))

sd1 <- sd(sample_data1)
se1 <- sd/sqrt(length(sample_data1))

sd2 <- sd(sample_data2)
se2 <- sd/sqrt(length(sample_data2))

boxplot(sd,sd1,sd2,se,se1,se2)

# sd means how each data set is far away, and se maens sample data how reflect the population data
# compare n1 and n2, then we see that n2's se is much less than n1. It shows that sample from data is bigger
# then se is smaller. and also we can find sd is not that changed. It means each data value is not affect
# the number of data



