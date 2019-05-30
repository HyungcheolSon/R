print(3+4)

print(3%%3)

print((3*2)%%3) 

print(3^2)

1/100000

'First'

first <- 1

cat(1,NULL,2)

cat(1, NA, 2)

print('d')

cat(1,NA,2)

sum(1,NULL,2)

date()

as.numeric ('1') +as.numeric('2')

print(3 & 0)

class (1)

class ('1')

cat(1, NA, 2)

cat(1, NULL, 2)

sum(1, NA, 2)

setwd("D:/workspace/R_Data_Analysis/Part3/data")
getwd()

setwd("D:/workspace/R_Data_Analysis/Part3/data")
txt1 <- read.csv("factor_test.txt")
txt1

factor1 <- factor(txt1$blood)
factor1

summary(factor1)

sex1 <- factor(txt1$sex)
summary(sex1)

Sys.Date()

Sys.time()

date()

as.Date('2019-5-30')

class("2019-05-30")

as.Date("2019-05-30")

as.Date("30052019",format="%d%m%Y")

as.Date("300519",format="%d%m%y")

as.Date(20,origin="2019-5-30")

as.Date(-20,origin="2019-5-30")

class("2019-5-30")

as.Date("2019-5-30")-as.Date("2019-5-01")

as.Date("2019-5-30") + 5

as.Date("2019-11-14") - Sys.Date()

install.packages("lubridate")
library(lubridate)
date <- as.POSIXct("2019-5-30 9:50:11 KST")
date

year(date)
month(date,label=T)
day(date)
wday(date,label=T)
month(date)<-2
date
date+as.POSIXct(1)


