install.packages("ggiraphExtra")
install.packages("tibble")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("gridExtra")
library(ggiraphExtra)
library(gridExtra)
library(tibble)
library(dplyr)
library(ggplot2)
library(ggiraphExtra)


head(USArrests)

str(USArrests)

crime <- rownames_to_column(USArrests, var = "state")

crime$state <- tolower(crime$state)

crime <- USArrests %>%
  rownames_to_column(var = "state") %>%
  mutate(state = tolower(state)
         
states_map <- ggplot2::map_data("state")
str(states_map)

m<-ggChoropleth(data = crime, aes(fill = Murder, map_id = state),   map = states_map) + ggtitle("미국 주별 살인범죄 분포")

a<-ggChoropleth(data = crime, aes(fill = Assault , map_id = state),   map = states_map) + ggtitle("미국 주별 폭행범죄 분포")

r<-ggChoropleth(data = crime, aes(fill = Rape , map_id = state),   map = states_map) + ggtitle("미국 주별 강간범죄 분포")

u<-ggChoropleth(data = crime, aes(fill = UrbanPop , map_id = state),   map = states_map) + ggtitle("미국 주별 도시 분포")

windows()
grid.arrange(m, a, r, u)
