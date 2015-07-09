# 150709


# 1

first <- c(20,32,35,34,40,51,52,56,57,68)
second <- c(23,34,36,44,42,51,54,57,54,62)

st_data1 <- cbind(first, second)

# (a)
plot(st_data1)

# (b)
# This data has positive relationship and strong linear

# (c)
r <- cor(st_data1)

# Answer : 0.9690

# (d)

sdf <- sd(first)
sds <- sd(second)

sef <- sdf/sqrt(length(first))
ses <- sds/sqrt(length(second))

sef
ses

se <- sqrt(1-r^2)/(length(first-second)) #
se
# Answer : cor is 0.02469

# (e)
ct <- cor.test(first, second)
ct$conf.int
# Answer : 0.8706 ~ 0.9929


# 2

# (a)
add_second <- second + 30
st_data2 <- cbind(first, add_second)

plot(st_data2)
cor(st_data2)

add_first <- first + 30
st_data3 <- cbind(add_first, add_second)

plot(st_data3)
cor(st_data3)
# Answer : Correlation is not changed. Both adding one column or both column.
#          Correlation is not affected by adding sum data equally

# (b)
mul_second <- second*100
st_data4 <- cbind(first, mul_second)

plot(st_data4)
cor(st_data4)

mul_first <- first*100
st_data5 <- cbind(mul_first, mul_second)

plot(st_data5)
cor(st_data5)

# Answer : Correlation is not changed even multiply some number in each variable and both
#          We can conclude that correlation is not affect by changing data by adding and multiplying


# 3

l_hrs <- c(-1.3, -0.5, -0.3, 0.2, 0.1, 0.5, 1.0,
           0.3, 0.4, 0.5, 0.1, 0.2, 0.4, 1.3, 1.2,
           1.4, 1.6, 1.6, 1.8, 3.1)
imp <- c(4, 22, 0, 0, 11, 13, 17, 25, 24, 27, 29,
         33, 33, 42, 33, 20, 19, 19, 25, 65)
# (a)
plot(l_hrs, imp)

#(b)
fit<- lm(imp~l_hrs)
abline(fit)

#(c)
summary(fit)



#(d)
install.packages("outliers")
library(outliers)

data_li <- cbind(l_hrs, imp)

find_outlier = outlier(data_li, opposite=F)
find_outlier


l_hrs2 <- c(-1.3, -0.5, -0.3, 0.2, 0.1, 0.5, 1.0,
           0.3, 0.4, 0.5, 0.1, 0.2, 0.4, 1.3, 1.2,
           1.4, 1.6, 1.6, 1.8)
imp2 <- c(4, 22, 0, 0, 11, 13, 17, 25, 24, 27, 29,
         33, 33, 42, 33, 20, 19, 19, 25)

fit2 <- lm(imp2~l_hrs2)
abline(fit2)

summary(fit2)
# P-value is much less than include outlier
