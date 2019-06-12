install.packages("wordcloud")
library(wordcloud)
library(RColorBrewer)

ggplot(data = top_10, aes(x = word, y = freq))+ylim(0, 100)+geom_col(stat="identity",fill="red")+coord_polar(theta="y")