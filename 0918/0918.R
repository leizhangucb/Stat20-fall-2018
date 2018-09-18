setwd("D:/Berkeley/GSI/Stat20-fall-2018/0919")

library(dplyr)

#family.csv
family <- read.csv("family.csv")
#a, there may be problem with data, overWt is not a logical variable
select(filter(family, overWt == "False"), age)
#b
select(filter(family, sex == "f"), weight)
#c
select(filter(family, age>50&height<70), sex)
#d
which.max(family$height)#Determines the location, i.e., index of the (first) minimum or maximum of a numeric (or logical) vector.
slice(family,3)#Select rows by position
#e
slice(family, seq(1, nrow(family), by = 2))
#f
family <- mutate(family, lastName = "Smith")#Add new variables

#USArrests
#a
by_assault <- arrange(USArrests, desc(Assault))
#b
filter(USArrests, Murder > 6&Assault >150)
#c
mutate(USArrests, States = row.names(USArrests))
#d
select(filter(USArrests, Assault > 290 & Murder <9), UrbanPop)
count(filter(USArrests, Assault >290 & Murder < 9))

#starwars
#a
select(filter(starwars, eye_color == "blue"), name)
#b
filter(starwars, homeworld == "Tatooine" & species == "Human")
count(filter(starwars, homeworld == "Tatooine" & species == "Human"))
mean(filter(starwars, homworld == "Tatooin" & species == "Human")$height)




