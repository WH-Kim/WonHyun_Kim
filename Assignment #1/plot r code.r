# 2015-07-02 data science in skku assignment
# WonHyun_Kim

#library for using qplot fuction
library(ggplot2)

#clean variables
rm(list=ls(all=TRUE))

#read data
cars <- read.csv("cars.csv")

#structure of cars data
str(cars)

#basic plot of cars.csv
plot(cars)

#histogram of cars cc column
hist(cars$cc)

#barplot of cars cc column
barplot(cars$cc)

#qplot about x axies are car's cc and y axies are car's km/l
qplot(cars$cc,cars$kmpl)

#qplot about x axies are car's cc and y axies are car's ps.p.rpm
qplot(cars$cc,cars$ps.p.rpm)
