setwd("D:/workspace/R_Data_Analysis/Part2/Stage2_Pie/Ex01.Jeju")
install.packages("KoNLP") 
install.packages("wordcloud") 
install.packages("stringr")
library(KoNLP)  
library(wordcloud)
library(stringr)
useSejongDic() 
mergeUserDic(data.frame(readLines("제주도여행지.txt"), "ncn"))

txt <- readLines("jeju.txt") 
place <- sapply(txt,extractNoun,USE.NAMES=F)
place   
head(unlist(place), 30)
cdata <- unlist(place) 
place <- str_replace_all(cdata,"[^[:alpha:]]","") 

place <- gsub(" ","", place)
txt <- readLines("제주도여행코스gsub.txt")
txt

cnt_txt <- length(txt)
cnt_txt

for( i in 1:cnt_txt) {place <-gsub((txt[i]),"",place)}
place
place <- Filter(function(x) {nchar(x) >= 2} ,place)
write(unlist(place),"jeju_2.txt") 
rev <- read.table("jeju_2.txt")
nrow(rev)   
wordcount <- table(rev) 
head(sort(wordcount,decreasing = T),30)
rev

top10<-head(sort(wordcount,decreasing = T),10)
pie(top10,main="제주도 추천 여행 코스 TOP 10")

pie(top10,col=rainbow(10),radius = 1,main="제주도 추천 여행 코스 TOP 10")
pct<-round(top10/sum(top10)*100,1)
names(top10)

lab<-paste(names(top10),"\n",pct,"%")
pie(top10,main="제주도 추천 여행 코스 TOP 10", col=rainbow(10),cex=0.8,labels=lab)

bchart <- head(sort(wordcount, decreasing=T),10)
bchart

bp <- barplot(bchart,  main = "제주도 추천 여행 코스 TOP 10 ", col = rainbow(10),cex.names=0.7, las = 2,ylim=c(0,25))

pct <- round(bchart/sum(bchart) * 100 ,1)
pct

text(x = bp, y = bchart*1.05, labels = paste("(",pct,"%",")"), col = "black", cex = 0.7)
text(x = bp, y = bchart*0.95, labels = paste(bchart,"건"), col = "black", cex = 0.7)

barplot(bchart,main="제주도 추천 여행 코스 Top 10",col=rainbow(10),xlim=c(0,25),cex.name=0.7,las=1,horiz=T)
text(y = bp, x = bchart*0.9, labels = paste(bchart,"건"), col = "black", cex = 0.7)
text(y = bp, x = bchart*1.15, labels = paste("(",pct,"%",")"), col = "black", cex = 0.7)