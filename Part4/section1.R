setwd("D:/workspace/R_Data_Analysis/Part4")
var1<-c(1,2,3,4,5)
plot(var1)

x<-1:3
y<-3:1
plot(x,y)


x<-1:3
y<-3:1
plot(x,y,xlim=c(1,10),ylim=c(1,5))


x<-1:3
y<-3:1
plot(x,y,xlim=c(1,10),ylim=c(1,5),
     xlab="X축 값", ylab="Y축 값",
     main="Plot Test")

v1<-c(100,130,120,160,150)
plot(v1,type='o',col='red',ylim=c(0,200),axes=FALSE,ann=FALSE)

axis(1,at=1:5,lab=c("MON","TUE","WED","THU","FRI"))
axis(2,ylim=c(0,200))

title(main="FRUIT",col.main="red",font.main=4)
title(xlab="DAY",col.lab="black")
title(ylab="PRICE",col.lab="blue")

v1
par(mfrow=c(1,3))
plot(v1,type="o")
plot(v1,type="s")
plot(v1,type="l")

par(mfrow=c(1,3))
pie(v1)
plot(v1,type="o")
barplot(v1)

a<-c(1,2,3)
plot(a,xlab="aaa")

par(mpg=c(0,1,0))
plot(a,xlab="aaa")

x<-c(1:3)
barplot(x)


x<-c(1:5)
barplot(x,horiz=T)

x<-matrix(c(5,4,3,2),2,2)
barplot(x,beside=T,names=c(5,3),col=c("green","yellow"))
x

x<-matrix(c(5,4,3,2),2,2)
barplot(x,names=c(5,3),col=c("green","yellow"),ylim=c(0,12))
x

x<-matrix(c(5,4,3,2),2,2)
par(oma=c(1,0.5,1,0.5))
barplot(x,names=c(5,3),beside = T,col=c("green","yellow"),horiz=T)

x<-matrix(c(5,4,3,2),2,2)
barplot(x,horiz=T,names=c(5,3),col=c("green","yellow"),xlim=c(0,12))

v1<-c(100,120,140,160,180)
v2<-c(120,130,150,140,170)
v3<-c(140,170,120,110,160)
qty<-data.frame(BANANA=v1,CHERRY=v2,ORANGE=v3)
qty

barplot(as.matrix(qty),main="fruit's Sales QTY", beside=T, col=rainbow(nrow(qty)),ylim=c(0,400))
legend(14,400,c("MON","TUE","WED","THU","FRI"),cex=0.8,fill=rainbow(nrow(qty)))

barplot(t(qty),main="Fruits Sales QTY",ylim=c(0,900),col=rainbow(length(qty)),space=0.1,cex.axis=0.8,las=1,names.arg=c("MON","TUE","WED","THU","FRI"),cex=0.8)
legend(0.2,800,names(qty),cex=0.7,fill=rainbow(length(qty)))

v1<-c(100,120,140,160,180)
v2<-c(120,130,150,140,170)
v3<-c(140,170,120,110,160)
qty<-data.frame(BANANA=v1,CHERRY=v2,ORANGE=v3)
qty

t(qty)

peach<-c(180,200,250,198,170)

colors<-c()

for(i in 1:length(peach))
{  if (peach[i]>=200)
  {colors<-c(colors,"red")}
  else if(peach[i]>=180)
  {colors<-c(colors,"yellow")}
  else {colors<-c(colors,"green")}
}
barplot(peach,main="Peach Saels QTY",names.arg = c("MON","TUE","WED","THU","FRI"),col=colors)

height<-c(182,175,167,172,163,178,181,166,159,155)

hist(height,main="histogram of height")

par(mfrow=c(1,1),oma=c(0.5,0.5,0.1,0.1))
p1<-c(10,20,30,40)
pie(p1,radius=1)

pie(p1,radius=1,init.angle=90)

pie(p1,radius=1,init.angle=90,col=rainbow(length(p1)),
    label=c("Week 1","Week 2","Week 3","Week 4"))

pct<-round(p1/sum(p1)*100,1)
lab<-paste(pct,"%")
pie(p1,radius=1,init.angle = 90,col=rainbow(length(p1)),
    label=lab)
legend(1,1.1,c("Week 1","Week 2", "Week 3", "Week 4"), cex=0.5, fill=rainbow(length(p1)))

install.packages("plotrix")
library(plotrix)

p1<-c(10,20,30,40,50)
f_day<-round(p1/sum(p1)*100,1)
f_label<-paste(f_day,"%")
pie3D(p1,main="3D Pie Chart", col=rainbow(length(p1)),
      cex=0.5,labels=f_label,explode=0.05)
legend(0.5,1,c("MON","TUE","WED","THU","FRI"),cex=0.6,fill = rainbow(length(p1)))

v1<-c(10,12,15,11,20)
v2<-c(5,7,15,8,9)
v3<-c(11,20,15,18,13)

boxplot(v1,v2,v3)

v1<-c(10,12,15,11,20)
v2<-c(5,7,15,8,9)
v3<-c(11,20,15,18,13)
boxplot(v1,v2,v3,col=c("blue","yellow","pink"),names=c("Blue","Yellow","Pink"),horizontal=T)
boxplot(v1,v2,v3)
