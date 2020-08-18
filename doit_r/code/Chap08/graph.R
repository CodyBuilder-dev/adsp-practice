#----------------08-2 산점도-------------------
library(ggplot2) #그래프용 ggplot2 사용
ggplot(data=mpg,aes(x=displ,y=hwy)) # 1.배경 생성
ggplot(data=mpg,aes(x=displ,y=hwy)) + geom_point() # 2. 배경+그래프 종류
ggplot(data=mpg,aes(x=displ,y=hwy)) + 
  geom_point() + 
  xlim(3,6) + 
  ylim(10,30) # 3. 배경+그래프종류+축설정

#---------------08-3 막대그래프-------------------
libaray(dplyr)

df_mpg = mpg %>%
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy))
df_mpg
ggplot(data = df_mpg, aes(x = drv,y = mean_hwy)) +
  geom_col()

#------------08-4 시간에 따라 달라지는 데이터--------