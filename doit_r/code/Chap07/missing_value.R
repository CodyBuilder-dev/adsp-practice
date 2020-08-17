#--------------07-1 결측치 정제------------------
# 결측치 찾기
df = data.frame(sex = c("M","F",NA,"M","F"),
                score = c(5,4,3,4,NA))
df

is.na(df) # elementwise NA 검출

table(is.na(df)) #table함수를 통해 결측치 빈도 출력
table(is.na(df$sex))
table(is.na(df$score))

mean(df) # 결측치로 인한 평균계산 불가
mean(df$score)


# 결측치 제거하기
library(dplyr)
df %>% filter(is.na(score))
df %>% filter(!is.na(score)) # score 결측치 제거
df_nomiss = df %>% filter(!is.na(score))
mean(df_nomiss$score)

df %>% filter(!is.na(score) & !is.na(sex)) # score,sex 결측치 제거


na.omit(df) # na.omit() = 모든 컬럼에서 결측치를 제외한 데이터 반환

#na.rm 파라미터
mean(df$score, na.rm=T)
sum(df$score,na.rm=T)

exam = read.csv("data/csv_exam.csv")
exam[c(3,8,15),"math"] = NA


# 결측치 대체
# 1. 평균치로 대체
mean(exam$math, na.rm=T)
exam$math = ifelse(is.na(exam$math),55,exam$math)
table(is.na(exam$math))

