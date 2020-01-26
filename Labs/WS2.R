#WS2 
#1
x <- c(5,7,3,10,1,7,19,5,2)
#a
x[4] # extracts 4th elem
#b
x[-4] # prints without 4th element Doesnt change original array
x[c(-4)]
#c
x[c(5:7)]
#d
x[3] <- 12 # change value of 3rd element , changes original array
#e
x[c(1,3)] = 4 #  Same as d


#2
#a
1:6
#b
10:14
#c
-3:2

#3
#a
seq(20,80, length = 4)
#b
seq(7,-3,length = 6)
seq(7,-3,by = -2)
#c
seq(0.50,1.07,by = 0.03)

#4
#a
rep(4,times = 8)
#b
rep(1:4,each =2)
#c
rep(1:3,times=3)

#5

y <- c(15,7,3,2,8,7,4,8,1,7,19,5,2)

#a
mean(y)
#b
median(y)
#c
sort(y)
sort(y,decreasing = FALSE)
#d
sort(y,decreasing = TRUE)
#e
length(y)