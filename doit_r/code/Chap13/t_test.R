#----------------13.1 통계적 가설 검정----------------
# 1. t검정 : 평균의 차이 유의성 검정
#(1) 차종별 평균연비 차이
# a. 데이터 준비
mpg = data.frame(ggplot2::mpg)

library(dplyr)
mpg_diff = mpg %>%
  select(class,cty) %>%
  filter(class %in% c("compact","suv"))

head(mpg_diff)

# b. t검정 수행
# t.test(data =원본 데이터, 컬럼~컬럼, var.equal=T)
?t.test
t.test(data = mpg_diff, cty ~ class , var.equal = T)

#(2) 유종별 평균 도시연비 차이
# a. 데이터 준비
mpg_diff2 = mpg %>%
  select(fl,cty) %>%
  filter(fl %in% c("r","p"))


#b. t검정 수행
t.test(data = mpg_diff2, cty ~ fl, var.equal = T)
t.test(mpg_diff$cty,mpg_diff$fl, var.equal = T)


# t.test의 ~와 , 차이
