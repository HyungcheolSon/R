
install.packages("googleVis")
library(googleVis)
attach(Fruits)
fruits
install.packages("reshape2")
library("reshape2")

Fruits

melt(Fruits,id='Date')

install.packages("stringr")

library(stringr)

fruits<-c('apple','Apple','banana','pineapple')
str_detect(fruits,'A')

str_detect(fruits,'^a')

str_detect(fruits,'e$')

str_detect(fruits,'^[aA]')

str_detect(fruits,'[aA]')

fruits

str_dup(fruits,3)

str_locate('apple','a')

