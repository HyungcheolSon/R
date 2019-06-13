install.packages("ggplot2")
install.packages("RColorBrewer")
install.packages("reshape2")
library(ggplot2)
library(reshape2)
library(dplyr)
library(scales)
library(RColorBrewer)
setwd("D:/workspace/R_Data_Analysis/Part2/Stage3/EX")

bus<-read.csv("버스노선별이용현황합계.csv",sep=",",stringsAsFactors = FALSE)

bus2<-melt(bus, id=c("버스노선번호"),variable.name='승하차',value.name='인원')

bus2

ggplot(bus2, aes(x=버스노선번호,y=인원, fill=승하차 ))+geom_bar(stat='identity',position = 'dodge')+ggtitle("서울 주요 마을 버스 이용 승객 현황")
