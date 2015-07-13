#insatll package using for ggplot2
install.packages("ggplot2")
#load library
library(ggplot2)

#load data
music <- read.csv("music.csv", header=T, sep=",")

#qplot
qplot(Type,LVar, data = music, geom=c("point", "smooth"), method=lm)
qplot(LFreq, data = music, geom="histogram")


#ggplot
ggplot(data=music, aes(x=LVar,y=LFreq)) + geom_point(aes(colour=Type))
ggplot(data=music, aes(x=LVar,y=LFreq)) + geom_point(aes(colour=Artisit))
ggplot(data=music, aes(x=LVar,y=LFreq))+ geom_smooth()


