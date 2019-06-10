<<<<<<< HEAD
#treemap
install.packages("treemap")
library(treemap)
setwd("D:/workspace/R_Data_Analysis/Part4")
total<-read.csv("학생시험결과_전체점수.csv",header=T,sep=",")
total

treemap(total,vSize="점수",index=c("점수","이름"))
treemap(total,vSize="점수",index=c("조","이름"))
treemap(total,vSize="점수",index=c("점수","조","이름"))

#Stars
setwd("D:/workspace/R_Data_Analysis/Part4")
total <- read.table("학생별전체성적_new.txt",header=T,sep=",")
total

row.names(total)<- total$이름
total

total<-total[,2:7]
total

stars(total,flip.labels=FALSE,draw.segment=FALSE,frame.plot=TRUE,full=TRUE,main="학생별 과목별 성적분석-STAR Chart" )

lab<-names(total)
value<-table(lab)
value

pie(value,labels=lab,radius=0.1,cex=0.6,col=NA)

stars(total,flip.labels=FALSE,draw.segment=TRUE,frame.plot=TRUE,full=TRUE,main="학생별 과목별 성적분석-나이팅게일 챠트" )
stars(total,flip.labels=FALSE,draw.segment=TRUE,frame.plot=TRUE,full=FALSE,main="학생별 과목별 분석 다이어그램-반원챠트" )

install.packages("fmsb")
library(fmsb)
layout <- data.frame(
  분석력=c(5,1),
  창의력=c(15,3),
  판단력=c(3,0),
  리더쉽=c(5,1),
  사교성=c(5,1))

set.seed(123)
data1 <- data.frame(
  분석력=runif(3,1,5),
  창의력=rnorm(3,10,2),
  판단력=c(0.5,NA,3),
  리더쉽=runif(3,1,5),
  사교성=c(5,2.5,4))
data2 <- rbind(layout,data1)
op <- par(mar=c(1,0.5,3,1),mfrow=c(2,2))
radarchart(data2,axistype=1,seg=5,plty=1,title="첫번째 타입")
radarchart(data2,axistype=2,pcol=topo.colors(3),plty=1,title="두번째 타입")
radarchart(data2,axistype=3,pty=32,plty=1,axislabcol="grey",na.itp=FALSE,title="세번째 타입)")
radarchart(data2,axistype=0,plwd=1:5,pcol=1,title="네번째 타입")

plot(1:15)
abline(h=8)
rect(1,6,3,8)
arrows(1,1,5,5)
text(8,9,"TEXT")
title("THIS IS TEST","SUB")

install.packages("ggplot2")
library(ggplot2)
korean<-read.table("학생별국어성적_new.txt",header=T,sep=",")
korean

ggplot(korean,aes(x=이름,y=점수))+geom_point()
ggplot(korean,aes(x=이름,y=점수))+geom_bar(stat="identity")
=======
#treemap
install.packages("treemap")
library(treemap)
setwd("D:/workspace/R_Data_Analysis/Part4")
total<-read.csv("학생시험결과_전체점수.csv",header=T,sep=",")
total

treemap(total,vSize="점수",index=c("점수","이름"))
treemap(total,vSize="점수",index=c("조","이름"))
treemap(total,vSize="점수",index=c("점수","조","이름"))

#Stars
setwd("D:/workspace/R_Data_Analysis/Part4")
total <- read.table("학생별전체성적_new.txt",header=T,sep=",")
total

row.names(total)<- total$이름
total

total<-total[,2:7]
total

stars(total,flip.labels=FALSE,draw.segment=FALSE,frame.plot=TRUE,full=TRUE,main="학생별 과목별 성적분석-STAR Chart" )

lab<-names(total)
value<-table(lab)
value

pie(value,labels=lab,radius=0.1,cex=0.6,col=NA)

stars(total,flip.labels=FALSE,draw.segment=TRUE,frame.plot=TRUE,full=TRUE,main="학생별 과목별 성적분석-나이팅게일 챠트" )
stars(total,flip.labels=FALSE,draw.segment=TRUE,frame.plot=TRUE,full=FALSE,main="학생별 과목별 분석 다이어그램-반원챠트" )

install.packages("fmsb")
library(fmsb)
layout <- data.frame(
  분석력=c(5,1),
  창의력=c(15,3),
  판단력=c(3,0),
  리더쉽=c(5,1),
  사교성=c(5,1))

set.seed(123)
data1 <- data.frame(
  분석력=runif(3,1,5),
  창의력=rnorm(3,10,2),
  판단력=c(0.5,NA,3),
  리더쉽=runif(3,1,5),
  사교성=c(5,2.5,4))
data2 <- rbind(layout,data1)
op <- par(mar=c(1,0.5,3,1),mfrow=c(2,2))
radarchart(data2,axistype=1,seg=5,plty=1,title="첫번째 타입")
radarchart(data2,axistype=2,pcol=topo.colors(3),plty=1,title="두번째 타입")
radarchart(data2,axistype=3,pty=32,plty=1,axislabcol="grey",na.itp=FALSE,title="세번째 타입)")
radarchart(data2,axistype=0,plwd=1:5,pcol=1,title="네번째 타입")

plot(1:15)
abline(h=8)
rect(1,6,3,8)
arrows(1,1,5,5)
text(8,9,"TEXT")
title("THIS IS TEST","SUB")

install.packages("ggplot2")
library(ggplot2)
korean<-read.table("학생별국어성적_new.txt",header=T,sep=",")
korean

ggplot(korean,aes(x=이름,y=점수))+geom_point()
ggplot(korean,aes(x=이름,y=점수))+geom_bar(stat="identity")
>>>>>>> 090a26744752db67f530889d269fb91a8c34e5ef
