ggplot(data = top_10, aes(x = word, y = freq))+ylim(0, 100)+geom_col(stat="identity",fill="blue")+coord_polar(theta="y",start= pi/3)

ggplot(top_10)+geom_rect(aes(xmin))