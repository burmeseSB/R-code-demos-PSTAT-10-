#Lecture 2 demo 1
#create a vector of the given test scores using the function c()
Test_Scores <-  c(8,7,8,10,5) #Enter test scores
Test_Scores

#Is test score a numeric vector?
is.vector(Test_Scores)

#Find the mean test score
mean(Test_Scores)
median(Test_Scores)

#Vector elemenets can have names

Test_Results <- c("Bob" = 8, "Alice" = 7, "Alex" = 8, "Juan" = 10, "Amy" = 5)
Test_Results
mean(Test_Results)
median(Test_Results)

#Lecture 2 Demo2
#Milage at fill up 1,2,3
MILAGE <- c(65311,65624,65908)
MILAGE
#uSEDIFF FUNCTION TO SHOW THE NUMBER OF MILES BETWEN FILL IPS
x <- diff(MILAGE)
x

#Milage at fill up 5,6,7

MILAGE2 <- c(66200,66533,66856)
MILAGE2
y <- diff(MILAGE2)
y

#Add two vectors (cOMBINES MIALGE 1 AND 2)
MILAGE3 = c(MILAGE,MILAGE2)
MILAGE3

z <- diff(MILAGE3)
z
#Is z a numeric vector
is.vector(z)

#Combining objects with different types

both <- c("dog",3,"cat","mouse",7,12,9,"chicken")
both
mode(both) #mode function determines the type of the vector

#Demo3
#Construct the sequence 1-1- as a vector, using the colon operator
series<- 1:10
series

#Using seq() function to construct the vecor 1-10

seq(10)

#starting 1-10,increment of 0.5
seq(1,10,by=0.5)

#sequence of a given length
seq(10,20,length =5)

#Demo 4
#repititions
?rep() #show the syntax of the repitition function
help("rep") #another way to do it

rep(3,times=5)
rep(x=3,times=5)
rep(1:4,2)
rep(1:4,each =2)
rep(1:4,each =2,length =4)

#Demo 5
#Sorting a vector using the sort funciton
?sort()
sort(Test_Scores) #increasing is default
sort(Test_Scores, decreasing = TRUE)
sort(Test_Scores, decreasing = FALSE)

#Demo6
#Accessing the elements of a vector

x <- c(1,7,3,10,5)
x[4] #return 4th element(No 0 index)

mode(2) 


