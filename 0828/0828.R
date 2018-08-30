#use R as a calculator
2+3

1000-1

3*4

64/16

6^2

64*2.54/100

h <- 64*2.54/100

10^6 - 2^6*3

sqrt(64)

#create a vector

x <- c(1,2,3)#c: combine values into a vector or list

x + 3

x*3
#create a matrix
y <- matrix(c(1,2,3,4), nrow = 2)

z <- matrix(c(1,0,1,0), nrow = 2)

y*z
y%*%z#matrix multiplication

#summary statistics
data <- c(1,3,5,-1,4,0,100)
mean(data)
var(data)
min(data)
max(data)


#how to look for help in R:
?mean
?var