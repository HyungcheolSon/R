install.packages("KoNLP")
install.packages("wordcloud")
install.packages("RColorBrewer")
install.packages("ggwordcloud")
install.packages("tm")
install.packages("stringr")
install.packages("ggplot2")
library(dplyr)
library(stringr)
library(tm)
library(wordcloud)
library(ggplot2)
library(RColorBrewer)
setwd("D:/workspace/R_Data_Analysis/Part2")

txt<-readLines("hiphop.txt")

head(txt)

txt<-stringr::str_replace_all(txt, "\\\"," ")
txt

txt<- stringr::str_replace_all(txt,"[^[:alpha:]]"," ") 

nouns <-sapply(txt,extractNoun,USE.NAMES = F)

wordcount <- table(unlist(nouns))
df_word <- as.data.frame(wordcount, stringsAsFactors = F)

names(df_word)
df_word <- dplyr::rename(df_word,word = Var1,freq = Freq)
df_word

df_word <- dplyr::filter(df_word, nchar(word)>=2)
df_word

top_10 <- df_word %>% 
  dplyr::arrange(desc(freq)) %>% 
  head(10)
top_10


order <- arrange(top_10, freq)$word               

ggplot(data = top_10, aes(x = word, y = freq))+ylim(0, 100)+geom_col(stat="identity",fill="blue")



