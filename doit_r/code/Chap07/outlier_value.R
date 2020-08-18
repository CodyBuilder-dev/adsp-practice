#-----------------07-2 이상치 정제하기---------------
# 이상치 제거
outlier = data.frame(sex = c(1,2,1,3,2,1),
                     score = c(5,4,3,4,2,6))

table(outlier$sex) # 빈도표를 통해 데이터 범위 확인
table(outlier$score) 

outlier$sex = ifelse(outlier$sex == 3 , NA, outlier$sex)
outlier$score = ifelse(outlier$score > 5, NA, outlier$score)

outlier %>%
  filter(!is.na(sex) & !is.na(score)) %>%
  group_by(sex) %>%
  summarise(mean_score = mean(score))

# 극단치의 기준 : 정상범위 지정 -> 해당범위 외는 극단치
mpg = ggplot2::mpg
boxplot(mpg$hwy)
boxplot(mpg$hwy)$stats #boxplot으로부터 12~37이 정상범위
mpg$hwy = ifelse(mpg$hwy < 12 | mpg$hwy >37, NA,mpg$hwy)
table(is.na(mpg$hwy))

