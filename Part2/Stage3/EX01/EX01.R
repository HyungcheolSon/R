setwd("D:/workspace/R_Data_Analysis/Part2/Stage3/data")
library(ggplot2)
library(reshape2)
data1<-read.csv("2013년_서울_주요구별_병원현황.csv",header=T)
data1

data1

barplot(as.matrix(data1[1:9,2:11]), main=paste("서울시 주요 구별 과목별 병원현황-2013년","\n","출처[국민건강보험공단]") , ylab="병원수", beside=T ,col=rainbow(8),ylim=c(0,350))
abline(h=seq(0,350,10),lty=3,lwd=0.2)
name <- data1$표시과목
name

legend(75,350,name,cex=0.8,fill=rainbow(8),bg="white")


head(data1,10)

melt(data1, id=c("표시과목"))

df_long<-melt(data1, id =c('표시과목'),variable.name="지역명",value.name="병원")
df_long

ggplot(df_long, aes(x=지역명, y=병원, fill='표시과목'))+geom_bar(stat='identity')

          