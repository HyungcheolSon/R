install.packages("ggplot2")
install.packages("gridExtra")
library(ggplot2)
library(gridExtra)

setwd("D:/workspace/R_Data_Analysis/Part4")
korean <- read.table("data/학생별국어성적_new.txt",header=T,sep=",")
korean
ggplot(korean,aes(x=이름,y=점수)) + geom_point()
ggplot(korean,aes(x=이름,y=점수)) + geom_bar(stat="identity")  
ggplot(korean,aes(x=이름,y=점수)) + geom_bar(stat="identity",fill="red",color="black") +
  theme(axis.text.x=element_text(angle=45,hjust=1,vjust=1, color="blue",size=8))


library(plyr)
score_kem<-read.csv("data/학생별과목별성적_국영수_new.csv",header=T)
sort_kem <- arrange(score_kem,이름,과목)
sort_kem

sort_kem2 <- ddply(sort_kem,"이름",transform,누적합계=cumsum(점수))
sort_kem2

sort_kem3 <- ddply(sort_kem2,"이름",transform,누적합계=cumsum(점수),label=cumsum(점수)-0.5*점수)
sort_kem3

ggplot(sort_kem3,aes(x=이름,y=점수,fill=과목)) + 
  geom_bar(stat="identity") +
  geom_text(aes(y=label,label=paste(점수,'점')),color="black",size=4)

score<-read.table("data/학생별전체성적_new.txt",header=T,sep=",")
score[,c("이름","영어")]

ggplot(score,aes(x=영어,y=reorder(이름,영어))) + 
    geom_point(size=6) +
    theme_bw( ) +
    theme(panel.grid.major.x=element_blank( ) ,
                panel.grid.minor.x=element_blank( ) ,
                panel.grid.major.y=element_line(color="red",linetype="dashed"))

ggplot(score,aes(x=영어,y=reorder(이름,영어))) + 
   geom_segment(aes(yend=이름),xend=0,color="blue") +
   geom_point(size=6,color="green") +
   theme_bw() +
   theme(panel.grid.major.y=element_blank())

v_mt<-mtcars
v_mt
str(mtcars)

graph1 <- ggplot(v_mt,aes(x=hp , y=mpg))
graph1 + geom_point()	
#ggplot(v_mt,aes(x=hp , y=mpg))+ geom_point()
graph2<- graph1 + geom_point(color="blue")
graph2

graph3<-graph2+geom_point(aes(color=factor(am)))
graph3

graph4<-graph1+geom_point(size=7)
graph4

graph5<-graph1+geom_point(aes(size=wt))
graph5

graph6<-graph1+geom_point(aes(shape=factor(am),size=wt))
graph6

graph7 <- graph1 + geom_point(aes(shape=factor(am),color=factor(am),size = wt)) +scale_color_manual(values=c("red","green"))
graph7

graph8 <- graph1 + geom_point(color="red") + geom_line()  
graph8

graph9 <- graph1 + geom_point(color="blue") + labs(x="마력" , y="연비(mile/gallon)")
graph9

three <- read.csv("data/학생별과목별성적_3기_3명.csv",header=T)
three

sort_score<-arrange(three,이름,과목)
sort_score

ggplot(sort_score,aes(x=과목,y=점수,color=이름,group=이름))+geom_line()
ggplot(sort_score,aes(x=과목,y=점수,color=이름,group=이름)) +geom_line( ) + geom_point( )
ggplot(sort_score,aes(x=과목,y=점수,color=이름,group=이름,fill=이름)) +  geom_line( ) + geom_point(size=6,shape=22 )

dis <- read.csv("data/1군전염병발병현황_년도별.csv",stringsAsFactors=F)
dis
ggplot(dis,aes(x=년도별,y=장티푸스,group=1))+geom_line()
ggplot(dis,aes(x=년도별,y=장티푸스,group=1))+geom_area()
ggplot(dis,aes(x=년도별,y=장티푸스,group=1))+geom_line()+geom_point()       
ggplot(dis,aes(x=년도별,y=장티푸스,group=1))+geom_area(fill="cyan",alpha=0.4)+geom_line(color="black")       
