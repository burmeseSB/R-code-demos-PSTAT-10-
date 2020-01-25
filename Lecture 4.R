options(prompt = "R>")
#Lecture 4 demo1

boxplot(state.area) # simple boxplot

#improved boxplot of state area
boxplot(state.area, col = "YELLOW", border = "BLUE", main = "Boxplot of state area data")

options(scipen = 999) # turns off scientific notation

#side by side boxplots

library(datasets)
View(mtcars) # or print(mtcars)

boxplot(wt~cyl, data = mtcars, main = toupper("compare vehicle weight to number of cylinder
                                              "),xlab = "number of cylinders", ylab= "weight", col = "pink")
#  Notice cyl ion yaxis, hence y~x, top black line is maximum, 
#bottom of red is q1, top of red is q3, median is middle black thick line

#Charting qualitative data : bar chart

dogs <- c(1,2,3,4) # popularity ratings with respective to breed
barplot(dogs)
breed_name <- c("Alsation", "Collie", "Bug", "Beagle") # breed names
barplot(dogs,names.arg = breed_name, xlab = "BREED", ylab = "Number of Dogs",
        col = "GREEN", main = toupper("doG CHART"), border = 'BLACK')

#Charting qualtitative data, pie chart

x <- c(4,5,6,1,4)
labels <- c("Comedy", "Action", "Romance", "Drama", "Scifi")
pie(x, labels, radius = 0.8, main = "Movies", col = rainbow(length(x)), clockwise = TRUE)

# MATRICES LECTURE 4 DEMO 2

y <- matrix(1:20, nrow = 5, ncol = 4,byrow = FALSE) 
#byrow=false is defauklt
y
class(y)
y[,3] # third column of matrix

y[2:4,1:3] # rows 2,3,4 of column 1,2,3

dim(y) # the dimensions of a matrix, Row by column .5 rows 4 columns

#Matrix lecture 4 demo 3
HEC  <- c(32,11,10,3,53,50,25,15,3,30,5,8)
#Construct the matrix
HairEyeColor <- matrix(HEC,nrow=3,ncol=4,byrow= TRUE)
HairEyeColor

#aDD ROW NAEMS AND COLUMN NAMES
rnames <- c("Black hair", "Brown hair", "Blonde Hair")
cnames <- c("Brown eyes", "Blue eyes", "Hazel eyes", "Green eyes")
HairEyeColor <- matrix(HEC, nrow = 3, ncol = 4, byrow= TRUE, dimnames = list(rnames,cnames))
HairEyeColor

#Determine how many people with blonde hair have blue eyes
#Selecrt rows 3 and column 2
HairEyeColor[3,2]

#sum rows, sum columns
addmargins(HairEyeColor) # sums row and columns
HairEyeColor

#give this matrix a name
HairEyeColor <- addmargins(HairEyeColor)
HairEyeColor
HairEyeColor[4,5]