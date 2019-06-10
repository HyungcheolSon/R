install.packages("ggplot2")
library(ggplot2)
korean<-read.table("학생별국어성적_new.txt",header=T,sep=",")
korean

ggplot(korean,aes(x=이름,y=점수))+geom_point()

ggplot(korean,aes(x=이름,y=점수))+geom_bar(stat = "identity",fill="green",color="red")+ 
  theme(axis.text = element_text(angle=45,hjust=1,vjust=1,color = "blue",size = 9))



score_kem<-read.csv("학생별과목별성적_국영수_new.csv",header=T)
score_kem

library(plyr)
sort_kem<-arrange(score_kem,이름,과목)
sort_kem

sort_kem2<-ddply(sort_kem,"이름",transform,누적합계=cumsum(점수))
sort_kem2

sort_kem3<-ddply(sort_kem2,"이름",transform,누적합계=cumsum(점수),label=cumsum(점수)-0.5*점수)
sort_kem3

ggplot(sort_kem3,aes(x=이름,y=점수,fill=과목))+geom_bar(stat="identity")+
  geom_text(aes(y=label,label=paste(점수,'점')),color="black",size=4)+
  guides(fill=guide_legend(reverse = T))+
  theme(axis.text.x=element_text(angle=45,hjust=1,vjust=1,color="black",size=8))

score<-read.table("학생별전체성적_new.txt",header=T,sep=",")
score

score[,c("이름","영어")]
ggplot(score,aes(x=영어,y=reorder(이름,영어)))+geom_point(size=6)+theme_bw()+
  theme(panel.grid.major.x = element_blank(),panel.grid.minor.y = element_line(color="red",linetype="dashed"))


install.packages("gridExtra")
library(gridExtra)
v_mt<-mtcars
v_mt

graph1<-ggplot(v_mt,aes(x=hp, y=mpg))
graph1+geom_point()

graph2<-graph1+geom_point(color="blue")
graph2

graph3<-graph2+geom_point(aes(color=factor(am)))
graph3

graph4<-graph1+geom_point(color="red")+geom_line()
graph4

graph5<-graph1+geom_point(color="blue")+labs(x="마력",y="연비(mile/gallon)")
graph5

three<-read.csv("학생별과목별성적_3기_3명.csv",header=T)
three

sort_score<-arrange(three,이름,과목)
sort_score

ggplot(sort_score,aes(x=과목,y=점수,color=이름,group=이름))+geom_line()+geom_point()
