list.files()

scan1 <- scan('scan_1.txt')
scan1

scan2 <- scan('scan_2.txt')
scan2

scan2 <- scan('scan_2.txt',what="")
scan2

scan3 <- scan('scan_3.txt',what="")
scan3

input <- scan()
input

input2 <- scan(what="")
input2

input3 <- readline()
input3

input4 <- readline("Are You OK?:")
input4

input5 <- readLines('scan_4.txt')
input5

fruits <- read.table('fruits.txt')
fruits

fruits <- read.table('fruits.txt',header=T)
fruits

fruit2 <- read.table('fruits.txt')
fruit2

fruit2 <- read.table('fruits_2.txt',skip=2) 
fruit2

fruit2 <- read.table('fruits_2.txt',nrows=2)
fruit2

fruit3 <- read.table('fruits.txt',header=T,nrows=2)
fruit3

fruit3 <- read.table('fruits.txt',header=F,skip=2,nrows=2)
fruit3

fruit3 <- read.csv('fruits_3.csv')
fruit3

fruit4 <- read.csv('fruits_4.csv')
fruit4

fruit4 <- read.csv('fruits_4.csv',header=F)
fruit4

label <- c('NO','NAME','PRICE','QTY')
fruit4 <- read.csv('fruits_4.csv',header=F,col.names=label)
fruit4

install.packages("googleVis")
library(googleVis)
install.packages("sqldf")
library(sqldf)
Fruits

write.csv(Fruits,"Fruits_sql.csv",quote=F,row.names=F)
fruits_2<-read.csv.sql("Fruits_sql.csv",sql="SELECT*FROM file WHERE Year=2008")
fruits_2

getwd()

install.packages("XLConnect")
library(XLConnect)
setwd("C:/Users/709-24/Documents")
data1=loadWorkbook("fruits_6.xls",create=T)
data2=readWorksheet(data1.sheet="sheet1",startRow=1,endRow=8,startCol=1,endCol=5)
data2

install.packages('readxl')
library(readxl)
fruits7 <- read_excel("fruits_6.xls", sheet = "Sheet1", range = "A2:D6", col_names = TRUE, col_types = "guess",na = "NA")
fruits7
