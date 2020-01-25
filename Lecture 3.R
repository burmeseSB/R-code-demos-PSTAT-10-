options(prompt = "R>")
# Lecture 3 Demo 1
data(state) #loads the data
help("data")

rm(state.center) # rm function removes
rm(state.division)
rm(state.region)
rm(state.x77)

state.area
is.vector(state.area)
class(state.area) # finds the type of the object

state.name #Character vector
state.abb #  Characrer vector of 2-letter abbreviation

#  View 'state-area'
View(state.area) # Views the data table
view(state.are) #  Wrong syntax for function View
print(state.area) #state.area is quantitative data as numeric data

#Demo 2 
#Histogram
#Requireas the Graphics 

?hist()

hist(state.area) #Default
     
hist(state.area,breaks = "Sturges", col = "YELLOW", xlab = "STATE AREAS (sq. miles)", main = paste("Histogram of State Areas"))
#without paste and parenthesis r fine
options(scipen = 999) # turns off scientific notation
options(scipen = 0) # turns on scifi notaiton
hist(state.area, breaks = "Sturges", col = "ORANGE")

#stemplot for state.area in lab
?stem()
stem(state.area) #default
stem(UPTAKE)

#Lecture 3 Demo 3 basic  statistics

min(state.area)
max(state.area)
#  Description of stattistisc
mean(state.area)
median(state.area)
range(state.area) # gives u smalllest and largest

install.packages("statip") #Downlaods the package
library(datasets) # imports anad load the package like Python's import
?mfv() # most frequent value AKA mode

#  Divides data into 5 portions
quantile(state.area) # 50th is q2 for median, 70 th is q3 25th is q1 

# WHat is this funcrtion
IQR(state.area) 

# 1 sigma or  1 sd Measure how spreadout  from mean
sd(state.area)

help(sd)
# sigma squared
var(state.area)
# summarizes
summary(state.area)

# only install.packages needs parenthesis
#library and data works with both