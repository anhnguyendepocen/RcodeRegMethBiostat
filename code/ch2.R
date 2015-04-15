wcgs <- read.csv("../RcodeRegMethBiostat//data/wcgs.csv")
install.packages("ggplot2")

library(ggplot2)


#Summary Statistics of systolic blood pressure (sbp)
summary(wcgs$sbp)

#Histogram
ggplot(wcgs, aes(x=sbp)) + geom_histogram(aes(y=..density..), fill="white", color="blue")  + geom_density(alpha=.2, fill="#FF6666")

#Boxplot
boxplot(wcgs$sbp)

#QQPlot for Normality
qqnorm(wcgs$sbp)
qqline(wcgs$sbp)


##Scatterplot of sbp vs weight
ggplot(wcgs, aes(x=sbp, y=weight)) +geom_point(shape=1) + geom_smooth() 

##Scatterplot of sbp vs weight colored by smoking with LOESS curve
ggplot(wcgs, aes(x=sbp, y=weight,color=smoke)) +geom_point(shape=1) + geom_smooth() 


##Scatterplot of sbp vs weight colored by behpat with LOESS curve
ggplot(wcgs, aes(x=sbp, y=weight,color=behpat)) +geom_point(shape=1) + geom_smooth() 
