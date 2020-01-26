#WS3
#1
data("CO2")
View(CO2$uptake)
hist(CO2$uptake,break = "Sturges", col = "YELLOW", xlab = "Plant",ylab = "uptake", main = "CO2 uptake")
# Shape is binormal

#2
#a
?stem()
#b, c
c <- c(9,9,22,32,33,39,39,42,49,52,58,70)
stem(c,scale = 2)

#e 
#stemplots preserve data since u r able to see the exact numbers in the data set in your graph
#while histograms bin numbers together in a data set
View(state.area)
View(state)
#3a
data("state.area")
min(state.area)
#b
max(state.area)
#c
mean(state.area)
#d
median(state.area)
#e
max(state.area)-min(state.area)
#4
#to install  a package use install.packages("Packagename")
#loading pkg , library(Packagename)
install.packages("statip")
library(statip)
my_vec <- c(2,3,3,3,4,2,5,10)
mfv(my_vec)