#예제 1-2
setwd("D:/workspace/R_Data_Analysis/Part2/Stage1_WordCloud/Ex02.HighSchool")
install.packages('rJava')
library(rJava)
install.packages("KoNLP")
install.packages("wordcloud")
library(KoNLP)
library(wordcloud)
useSejongDic()
library(RColorBrewer)

data1<-readLines("remake.txt")
data1
data2<-sapply(data1, extractNoun,USE.NAMES = F)
data2
data3<-unlist(data2)
data3<-Filter(function(x){nchar(x)<=10},data3)
head(unlist(data3),30)

data3<-gsub("\\d+","",data3)
data3<-gsub("쌍수","쌍꺼풀",data3)
data3<-gsub("쌍커풀","쌍꺼풀",data3)
data3<-gsub("메부리코","매부리코",data3)
data3<-gsub("\\.","",data3)
data3<-gsub(" ","",data3)
data3<-gsub("\\'","",data3)
data3

write(unlist(data3),"remake_2.txt")
write(unlist(data3),"remake_2.txt")
data4<-read.table("remake_2.txt")
data4
nrow(data4)
wordcount<-table(data4)
wordcount

head(sort(wordcount,decreasing = T),20)
txt<-readLines("성형gsub.txt")
txt
cnt_txt<-length(txt)
cnt_txt
i<-1
for(i in 1:cnt_txt){
  data3<-gsub((txt[i]),"",data3)
}

data3
data3<-Filter(function(x) {nchar(x)>=2},data3)
write(unlist(data3),"remake_2.txt")
data4<-read.table("remake_2.txt")
data4
nrow(data4)
wordcount<-table(data4)
wordcount
head(sort(wordcount,decreasing = T),30)
palete<-brewer.pal(9,"Set3")
wordcloud(names(wordcount),freq=wordcount,scle=c(5,1),rot.per=0.25,min.freq = 2,random.order = F,random.color = T, colors=palete)
legend(0.3,1,"여고생들이 선호하는 성형수술 부위",cex=0.8,fill=NA,border=NA,bg="white",text.col="red",text.font=2,box.col="red")
