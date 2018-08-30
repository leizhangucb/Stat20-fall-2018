x <- 1:10
y <- -4:0









berk.temp <- c(68, 73, 71, 74, 73, 73, 73, 74, 72)
length(berk.temp)
mean(berk.temp)
berk.temp.c <- (berk.temp-32)/1.8
sample(berk.temp, size = 4)
sample(berk.temp, size = 4, replace = TRUE)












six_sided <- 1:6
sample(six_sided, size = 1)
sample(six_sided, size = 1) + sample(six_sided, size = 1)

tickets <- c(1,3,5,15,27)
sample(tickets, size = 1)
sample(tickets, size = 1) + sample(tickets, size = 1)

for (i in (1:10)){
  print(sample(c(0,1), size = 1, replace = TRUE))
}
sample(c(0,1), size = 10, replace = TRUE)


sum(sample(c(0,1), size = 10, replace = TRUE))
sum(sample(c(0,1), size = 100, replace = TRUE))
