# Probability of coin tosses and Law of Averages

n=10000 #keep taking larger and larger n
heads=sample(x=c(0,1),size=n,replace=TRUE)
count_heads=cumsum(heads) #what is the length of cumsum(heads)
exp_heads=(1:n)/2
diff_heads=count_heads-exp_heads
percent_heads=(count_heads/(1:n))*100 ## taking the percent of heads

library(ggplot2)
par(mfrow=c(2,1))
plot(1:n,diff_heads,type="l", main="Difference",xlab = "Number of Tosses",
     ylab = "# Heads - # Tosses/2")
abline(h=0,col="red")
plot(1:n,percent_heads[1:n], ylim=c(0,100),
    type = "l", lwd=1.2,main="Percent Heads",xlab="Number of Tosses",
     ylab="% of heads")
abline(h=50,col="red",lwd=1)



