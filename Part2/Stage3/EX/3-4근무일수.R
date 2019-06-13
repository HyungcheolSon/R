install.packages("ggplot2")
library(ggplot2)
library(reshape2)

setwd("D:/workspace/R_Data_Analysis/Part2/Stage3/EX")

goyong_day <- read.csv("고용형태별_취업자현황_근무일수.csv",sep=",",stringsAsFactors = FALSE)

colname <- goyong_day$년도

v1 <- goyong_day[,2]
v2 <- goyong_day[,3]
v3 <- goyong_day[,4]
v4 <- goyong_day[,5]
v5 <- goyong_day[,6]
v6 <- goyong_day[,7]
v7 <- goyong_day[,8]

plot(v1,xlab="",ylab="",ylim=c(10,25),axes=FALSE,col="violet",type="o",lwd=2,main="고용형태별 근무일수(단위:일)")

axis(1,at=1:7,label=colname,las=2)
axis(2,las=1)

lines(v2 ,col="blue",type="o",lwd=2)
lines(v3 ,col="red",type="o",lwd=2)
lines(v4 ,col="black",type="o",lwd=2)
lines(v5 ,col="orange",type="o",lwd=2)
lines(v6 ,col="cyan",type="o",lwd=2)
lines(v7 ,col="yellow",type="o",lwd=2)

abline(h=seq(0,25,1),v=seq(1,7,1),lty=2,lwd=0.2)

col <- names(goyong_day[2:8])
colors <- c("violet","blue","red","black","orange","cyan","yellow")
legend(1,15,col,cex=0.8,col=colors,lty=1,lwd=2,bg="white")




