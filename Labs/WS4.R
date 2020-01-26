library(datasets)
data("mtcars")
View(mtcars)
# 1)
plot(mtcars $ mpg, mtcars $ drat) # plot of MPG vs rear axle ratio

#2) 

hist(mtcars $ gear, breaks = "Sturges", main = "Gears Range vs Frequency", col = "YELLOW",
     xlab = "Gears range", ylab = "Frequency") #  histogram of gears
#3)
summary(mtcars) #  Summary of mtcars

#4)

boxplot(mtcars $ mpg, main = "Boxplot of mpg", col = "PINK", xlab ="NULL",
        ylab = "# of gears")  #boxplot of mpg
options(scipen = 999)

#5)

boxplot(mtcars $mpg ~ mtcars $ gear, main = toupper("Mpg vs Gear"), col = "RED",
        xlab = "Number of gears", ylab = "Miles per gallon")
#  boxplot of mpg vs gear

#6) 
#a)

deaths <- c(738,538,158,103,93,682,2312)
COD <- c("Heart diseases", "Cancer", "Stroke", "Pumonary diseases",
         "Accidents", "Others", "All causes")
pie(deaths, labels = COD, radius = 1, main = "Deaths in 1995", col = rainbow(length(COD)),
    clockwise = TRUE)
#pie chart of the death toll and cause of death in 1995

#b)                                                                          
#No, very visual and small areas seem hard to estimate(Esp comparison of piecharts)


#7a) Yes, Yes
#b) Candidate 2, Candidate 2