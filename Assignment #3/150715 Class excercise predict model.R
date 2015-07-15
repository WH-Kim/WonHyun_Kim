install.packages("e1071")
install.packages("caret")
install.packages("class")
install.packages("klaR")
library("e1071")
library("caret")
library("class")
library("klaR")

#
x=iris[,-5]
y=iris$Species

classifier <- naiveBayes(iris[,1:4], iris[,5])
table(predict(classifier, iris[,-5]),iris[,5])

model = train(x,y,'nb',trControl=trainControl(method='cv',number=10))
model

##
install.packages("ElemStatLearn")
library("ElemStatLearn")


sub = sample(nrow(spam), floor(nrow(spam)*0.9))
train = spam[sub,]
test = spam[-sub,]

xTrain = train[,-58]
yTrain = train$spam

xTest = test[,-58]
yTest = test$spam

model2 <- naiveBayes(xTrain, yTrain)
table(predict(model2, xTest), yTest)



