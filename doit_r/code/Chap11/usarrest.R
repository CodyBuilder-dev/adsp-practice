#---------11.1 미국 주별 강력범죄율 단계구분도----------
install.packages("mapproj")
install.packages("ggiraphExtra") 
install.packages("maps") #지도 데이터 패키지

library(ggiraphExtra)
library(tibble)
library(ggplot2)

# 범죄율 데이터 확인
struct(USArrests)
head(USArrests)

# 범죄율 데이터 전처리
crime = rownames_to_column(USArrests, var = "state")
crime$state = tolower(crime$state)

# 지도 데이터 불러오기
states_map = map_data("state")
struct(states_map)

# 단계 구분도 표기
ggChoropleth(data = crime,
             aes(fill = Murder,
                 map_id = state),
             map = states_map,
             interactive = T)
