library(googleVis)
sort1<-Fruits$Sales
sort1
sort(sort1)

install.packages("dplyr")
library(dplyr)
setwd( "D:/workspace/R_Data_Analysis/Part3/data")
data1<-read.csv("2013년_프로야구선수_성적.csv")
data1

data2<-filter(data1,경기>120)
data2

data3<-filter(data1,경기>120&득점>80)
data3

filter(data1, 경기 > 120)
select(data1,순위:타수)

data1 %>%
select(선수명,팀,경기,타수) %>%
filter(타수 > 400) %>%
arrange(타수)

data2  %>%
select(선수명, 팀, 경기, 타수)  %>%
  filter(경기 > 120) %>%
    arrange(desc(경기),desc(타수))

data1 %>%
    select(선수명,팀,경기,타수) %>%
      mutate(경기x타수 = 경기*타수) %>%
        arrange(경기x타수)


data1 %>%
    select(선수명,팀,출루율,장타율) %>%
      mutate(OPS = 출루율 + 장타율) %>%
        arrange(desc(OPS))

data1 %>%
    group_by(팀) %>%
      summarise(average = mean(경기,na.rm=TRUE))

data1 %>%
  group_by(팀) %>%
    summarise_each(list(mean, n(),경기,타수)

install.packages("googleVis")     
library(googleVis)
attach(Fruits)

data9<-read.csv("Fruits.txt")
data9
Fruits<-filter(Fruits,Expenses>80)

