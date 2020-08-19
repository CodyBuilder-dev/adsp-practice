#----------------15-2. 상관분석--------------------
# 1. 상관분석 : 변수간의 상관관계가 존재하는지 안하는지 분석
# 보통 영가설 H0 : "상관계수가 0이다"

# a.데이터 준비
economics = as.data.frame(ggplot2::economics)
economics

# b. 상관분석 진행
cor.test(economics$unemploy, economics$pce)


# 2. 상관계수 히트맵 만들기
# a. 데이터 준비
struct(mtcars)
# b. 히트맵 그리기
car_cor = cor(mtcars)
car_cor
round(car_cor,2)

# c. 히트맵 시각화
install.packages("corrplot")
library("corrplot")
corrplot(car_cor)
corrplot(car_cor,method="number")
