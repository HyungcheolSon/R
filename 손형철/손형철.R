#1
data("iris")
table(iris$Sepal.Length)

x<-table(iris$Sepal.Length)
barplot((x),main="Sepal.Length")
x        

table(iris$Sepal.Width)
x2<-table(iris$Sepal.Width)
barplot((x),main="Sepal.Width")
x2

y<-table(iris$Petal.Length)
barplot((y),main = "Petal.Length")
y

y2<-table(iris$Petal.Width)
barplot((y2),main="Petal.Width")
y2


plot(x=iris$Sepal.Length,y=iris$Sepal.Width)
plot(x=iris$Petal.Length,y=iris$Petal.Width)

#2
data(iris)
iris
tapply(iris$Sepal.Length,iris$Species,mean)
average1<-tapply(iris$Sepal.Length,iris$Species,mean)
barplot(average1,main="Average of Species",ylab = "Sepal.Length")

tapply(iris$Sepal.Width,iris$Species,mean)
average2<-tapply(iris$Sepal.Width,iris$Species,mean)
barplot(average2,main="Average of Species",ylab = "Sepal.Width")

tapply(iris$Petal.Length,iris$Species,mean)
average3<-tapply(iris$Petal.Length,iris$Species,mean)
barplot(average3,main="Average of Species",ylab = "Petal.Length")

tapply(iris$Petal.Width,iris$Species,mean)
average4<-tapply(iris$Petal.Width,iris$Species,mean)
barplot(average4,main="Average of Species",ylab = "Petal.Width")

#3
str(iris)
ggplot(data=iris,aes(x=Species,y=Sepal.Length))+geom_boxplot()
str(iris)       
ggplot(data=iris,aes(x=Species,y=Sepal.Width))+geom_boxplot()
str(iris)
ggplot(data=iris,aes(x=Species,y=Petal.Length))+geom_boxplot()
str(iris)       
ggplot(data=iris,aes(x=Species,y=Petal.Width))+geom_boxplot()
       
       