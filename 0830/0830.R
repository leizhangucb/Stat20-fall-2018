#1
x <- 1:10
#2
y <- -4:0
#3
x = y
#4
berk.temp <- c(68, 73, 71, 74, 73, 73, 73, 74, 72)
length(berk.temp)
#5
mean(berk.temp)
#6
berk.temp.c <- (berk.temp-32)/1.8
#7
sample(berk.temp, size = 4)
sample(berk.temp, size = 4, replace = TRUE)
#8
six_sided <- 1:6
sample(six_sided, size = 1)
#9
sample(six_sided, size = 1) + sample(six_sided, size = 1)
#10
tickets <- c(1,3,5,15,27)
sample(tickets, size = 1)
#11
sample(tickets, size = 2, replace = TRUE)
#12
for (i in (1:10)){
  print(sample(c(0,1), size = 1))
}
sample(c(0,1), size = 10, replace = TRUE)
#13
sample(c(0,1), size = 1)
#14
sum(sample(c(0,1), size = 10, replace = TRUE))
#15
sum(sample(c(0,1), size = 100, replace = TRUE))
#16
setwd("D:/Berkeley/GSI/Stat20-fall-2018/0830")#change it to your own path or import it using the directions in the pdf file
family <- read.csv("family.csv")
head(family)
#17
mean(family$age)
mean(family$weight)
dim(family)[1]
#18
0.453592*family$weight
0.0254*family$height
