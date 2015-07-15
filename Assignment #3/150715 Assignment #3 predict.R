#1
my_data <- read.csv("Cigar.csv", header=T, sep=",") #read cigar data
head(my_data) 

plot(my_data$price, my_data$sales,col="green") #plot actual data

my_model <- lm(sales~price, data=my_data)
my_data$pred <- predict(my_model, my_data)
points(my_data$price, my_data$pred, col="red", pch=16) #plot predict data
abline(my_model)

#2
new_data <- data.frame(price=seq(50,200,2)) #maek new data
new_data$pred <- predict(my_model, new_data)
points(new_data$price, new_data$pred, col="blue", pch=13)
