install.packages("stringi")
install.packages("devtools")
install.packages("kormaps2014")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("ggiraphExtra")
devtools::install_github('cardiomoon/kormaps2014')

library(kormaps2014)
library(DT)
library(dplyr)
library(kormaps2014)
library(ggiraphExtra)
library(ggplot2)
str(changeCode(korpop1))
str(changeCode(kormap1))
korpop1 <- rename(korpop1, pop  = 총인구_명, name = 행정구역별_읍면동)

ggChoropleth(data = korpop1,       # 지도에 표현할 데이터
             aes(fill    = pop,    # 색깔로 표현할 변수
                 map_id  = code,   # 지역 기준 변수
                 tooltip = name),  # 지도 위에 표시할 지역명
             map = kormap1,        # 지도 데이터
             interactive = T)      # 인터랙티브

ggChoropleth(data = tbc,            # 지도에 표현할 데이터
             aes(fill    = NewPts,  # 색깔로 표현할 변수
                 map_id  = code,    # 지역 기준 변수
                 tooltip = name),   # 지도 위에 표시할 지역명
             map = kormap1,         # 지도 데이터
             interactive = T)       # 인터랙티브
