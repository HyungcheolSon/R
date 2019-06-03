vec1 <- c(1:5)
vec2 <-c('a','b','c','d','e')
max(vec1)
max(vec2)
mean(vec1)
mean(vec2)

library(googleVis)
Fruits

aggregate(Sales~Year,Fruits,sum)

aggregate(Sales~Fruit,Fruits,max)

mat1 <- matrix(c(1:6), nrow = 2, byrow = T )
mat1
apply(mat1,1,sum)
apply(mat1,2,sum)
apply(mat1[,c(2,3)],2,max)

list1 <- list(Fruits$Sales)
list1

list2<-list(Fruits$Profit)
lapply(c(list1.list2),max)
sapply(c(list1,list2),max)

Fruits

tapply(Sales,Fruit,Sum)
attach(Fruits)
tapply(Sales,Fruit,sum)
tapply(Sales,Year,sum)

vec1 <- c(1,2,3,4,5)
vec2 <- c(10,20,30,40,50)
vec3 <- c(100,200,300,400,500)
mapply(sum,vec1,vec2,vec3)

data1<-read.csv('data1.csv')
data1

apply(data1[,c(2:15)],2,sum)
apply(data1[,c(2:15)],1,sum)


data2<-read.csv("1-4호선승하차승객수.csv",stringsAsFactors=F)
data2

tapply(c(a2:a20),c(c1),sum)
tapply(하차,노선번호,sum)

sapply(data2[,c(3,4)],sum)

aggregate(승차+하차~노선번호,data2,sum)
aggregate(승차~노선번호,data2,sum)


