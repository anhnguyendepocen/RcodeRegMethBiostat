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
