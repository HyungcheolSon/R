install.packages("ggplot2")
install.packages("reshape2")
install.packages("RcolorBrewer")
library(ggplot2)
library(reshape2)
library(dplyr)
library(scales)
library(RColorBrewer)
setwd("D:/workspace/R_Data_Analysis/Part2/Stage3/EX")

mapo<-read.csv("마포09번이용현황.csv")

mapo

mapo2<-melt(mapo, c("정류소명"),variable.name='승하차',value.name="인원")
mapo2


ggplot(mapo2, aes(x=정류소명, y=인원, color=승하차, group=승하차))+geom_line(size=1.2)+geom_point(size=3)+ggtitle("마포 09번 이용승객수")+theme(plot.title = element_text(size = 20))

       