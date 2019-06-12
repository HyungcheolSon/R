install.packages("rJava")
install.packages("memoise")
install.packages("KoNLP")
install.packages("stringr")
install.packages("wordcloud")

library(KoNLP)
library(dplyr)
library(stringr)
library(wordcloud)
library(RColorBrewer)
library(ggplot2)
library(plyr)
library(scales)

setwd("D:/workspace/R_Data_Analysis/Part2")

useNIADic()

txt<-readLines("hiphop.txt")

head(txt)

txt<-str_replace_all(txt,"\\W"," ")

nouns<-extractNoun(txt)

wordcount<-table(unlist(nouns))

df_word<-as.data.frame(wordcount,stringsAsFactors = F)

df_word<-rename(df_word,word=Var1,freq=Freq)

df_word<-filter(df_word, nchar(word)>=2)

top_10<-df_word %>%
arrange(desc(freq)) %>%
  head(10)

top_10

top_10<-arrange(top_10,word,freq)
top_10_1<-ddply(top_10,"word",transform,누적합계=cumsum(freq))
top_10_2<-ddply(top_10_1,"word",transform,누적합계=cumsum(freq),label=cumsum(freq)-0.5*freq)
top_10_2
ggplot(top_10_2, aes(x=word,y=freq))+geom_bar(stat="identity",color=)+geom_text(aes(y=label,label=paste(freq,'번')),color="white",size=3)+scale_fill_brewer(palette = "gree")

pal<-brewer.pal(8,"Dark2")

wordcloud(words = df_word$word, freq=df_word$freq,min.freq = 2, max.words = 100, random.order = F, rot.per = .1, scale = c(4,0.3),colors=pal)

order<-arrange(top_10, freq)$word

ggplot(top_10, aes(x=word,y=freq,fill=top_10_2))+geom_bar(stat = 'identity')+scale_fill_brewer(palatte = "Greens")+geom_text(aes(y=label,label=paste(freq,'번')),color="black",size=3)
                                                                   
                                                                   