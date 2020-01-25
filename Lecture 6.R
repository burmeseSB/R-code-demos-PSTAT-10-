options(prompt = "R>")
gender <- factor(c("male","female","male","female"))
#Lecture 6 demo1 lsits
?list()
#Create a list of scalars 7,8,17
list(7,8,17)

#a list consisiting of a factor, a scalar and a character string
My_List <- list(gender,9,"PSTAT")
My_List

# Is the R object My_List a list?
is.list(My_List)

#Fund the length of my list
length(My_List)

#Member reference using Single square bracket notation
# Returns the 2nd and 3rd elements of the list
My_List[c(2,3)]

# Member reference using DOUBLE  square bracket notation
My_List[[2]]
My_List[[2]]+3
class(My_List[2]) #single square braket list
class(My_List[[2]]) # double braket gives numeirc

#Add to the list
My_List[[1]] # References element 1 of My_list(gender)
My_List[[1]] <- paste(My_List[[1]], "other")
My_List

#Demo2

#Using sub() to replace the first match only in a sting
# Syntax: sub(old new, string)
x <- c("Hello, Hello world") # Notice this is a single string
x
sub("Hello", "Hi", x)
x

#gsub function in R(global substitution or replacement for all instanes)
t <- c("Hello, Hello world")
t
gsub("Hello", "Hi", t)
t

z <- c("Goodbye, goodbye and farewelll, goodbye")
sub("goodbye", "solong", z) #Case sensitive

gsub("goodbye", "so long", z)

#Demo 2 cont
#Pe-defined constants in R
letters  # LOWER CASE
LETTERS #upper case
month.abb #3-letter abbv
month.name # names in full
is.list(letters)
is.vector(letters)

#converting pre-defined constants to lists
my_letters <- list(letters)
is.list(my_letters)

#Some examples
print(letters[1:4])
list(letters[1:4])

#Data frames
?data.frame()
#Construct 3 vectors
d <- c(2,3,4,6)
e <- c("red", "white", "red", NA)
f<- c(TRUE,TRUE,TRUE, FALSE)

#Construct a data frame named "My _DF"using three vectors
My_DF <- data.frame(d,e,f)
#us My_DF data frame?
is.data.frame(My_DF)

#Define row na,es
my_row_names <- c("one", "two" , "three", "four")

#add_row names

My_DF <- data.frame(d,e,f,row.names = my_row_names)
My_DF

#Select columns d and fonly and name this object My_DF2
My_DF2 <- My_DF[c("d", "f")]
My_DF2

#Select coluimn e and name this object My_DF3
My_DF3 <- My_DF[c("e")]
My_DF3

#e is a character vector and by default, should have been
#Converted to a factor. R will then treat the data appropriately
plot(My_DF3)

#Demo 4
#IRIS DATA

data("iris") #data setloaded
View(iris)
is.data.frame(iris) # is irsi a  dataframe
class(iris)  #another way to check
dim(iris) # the dimensions of iris 150 observations of 5 variables
View(iris) # take a look at IRIS in viewer
ls(iris) # show the name of objects(varialbes) in IRIS
names(iris) #also shows the names of objects variables in IRIS

#Demo 5
#Print first 5 rows of data
head(iris, n = 5)
tail(iris, n =5)

#remove petal width from iris
my_iris_data1 <- subset(iris,select = -Petal.Width)
head(my_iris_data1, n = 5)

# Remove petal width from and species iris
my_iris_data2 <- subset(iris, select = -c(Petal.Length, Species))
head(my_iris_data2, n =5)

#Keep only Petal Lenght and Species
my_iris_data3<- subset(iris,select =c(Petal.Length,Species))
head(my_iris_data3, n =5)

#REmoving(or keeping) many columns
my_iris_data4 <- subset(iris, select = -c(Sepal.Width:Species))
head(my_iris_data4, n = 5)

summary(iris)
names(iris)

#histogram of petal length
hist(iris$Petal.Length)
mean(iris$Petal.Length)
median(iris$Petal.Length)
sd(iris$Petal.Length)
