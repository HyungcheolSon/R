install.packages("KoNLP")
install.packages("wordcloud")
install.packages("RColorBrewer")
install.packages("ggwordcloud")
install.packages("tm")
install.packages("stringr")
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

top_20 <- df_word %>% 
  dplyr::arrange(desc(freq)) %>% 
  head(20)
top_20

wordcloud::wordcloud(words = df_word$word,freq = df_word$freq,min.freq = 2,max.words = 200,random.order = F,rot.per = .1,scale = c(4, 0.3),colors = brewer.pal(8, "Dark2"))

order <- arrange(top20, freq)$word               # 빈도 순서 변수 생성
 
ggplot(data = top20, aes(x = word, y = freq)) +  
  ylim(0, 2500) +
  geom_col() + 
  coord_flip() +
  scale_x_discrete(limit = order) +              # 빈도 순서 변수 기준 막대 정렬
  geom_text(aes(label = freq), hjust = -0.3)

