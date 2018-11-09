#load data
setwd("D:/Berkeley/GSI/Stat20-fall-2018/1108")
pearson <- read.csv("pearson.csv")
father <- pearson$Father
son <- pearson$Son
#7
cor(father,son)



sd_fpp <- function(x){sd(x)*sqrt((length(x)-1)/(length(x)))}
z_score <- function(x){(x-mean(x))/sd_fpp(x)}
zfather <- z_score(father)
zson <- z_score(son)
rpearson <- mean(zfather*zson)
rpearson

#8
reg_slope <- rpearson*sd_fpp(son)/sd_fpp(father)
reg_slope
reg_intercept <- mean(son)-reg_slope*mean(father)
reg_intercept

lm(Son ~ Father, data = pearson)


#9
ggplot(pearson,aes(x=Father,y=Son)) + 
  geom_point(color="purple",alpha=0.6) + 
  geom_smooth(method = lm,se=FALSE)
