#-----------------함수 재정의-----------------
# View의 대문자가 싫어서 view로 오버래핑함
# 객체의 이름을 받아서 title로 띄워주기까지 해야 완-벽
view = function(x,title = deparse(substitute(x))){
  return(View(x,title))
}

# str의 함수이름이 너무 마음에 안들어서 struct로 오버래핑
struct = function(x) {
  return(str(x))
}

#----------------exam 데이터--------------------
exam = read.csv("data/csv_exam.csv")
exam

head(exam) # 데이터 앞부분 6개
tail(exam) # 데이터 끝부분 6개

view(exam) #viewer 창에서 데이터 확인
dim(exam) # 데이터 차원표기 , 행 열
struct(exam) # 데이터 차원, 컬럼별 타입, 샘플값 확인
summary(exam) # 컬럼별 간단한 기술통계표시

#----------------mpg데이터-----------------------
# mpg데이터란? 자동차 데이터
install.packages("ggplot2")
library(ggplot2)

#mpg는 초기에는 tibble 상태
#그대로 써도 되지만, data.frame으로 바꾸는게 좋음
mpg_df = as.data.frame(ggplot2::mpg)

head(mpg_df)
view(mpg_df)
struct(mpg_df)
summary(mpg_df)
# 패키지에 기본적으로 제공되는 데이터는 help 존재
?mpg
help(mpg)

#-----------------변수명(=컬럼명) 바꾸기--------------------
df_raw = data.frame(var1 = c(1,2,1),
                    var2 = c(2,3,2))
df_raw

install.packages("dplyr")
library(dplyr)

#데이터 복사본 만들기
#copy함수 필요없이, 할당만 해줘도 새 객체 생성
df_new = df_raw

# 컬럼명 바꾸기
# out-of-place 연산임에 주의
df_new = rename(df_new,v2 = var2)

mpg_df = rename(mpg_df,city=cty,highway=hwy)
head(mpg_df)
help(mpg)

#------------------파생변수 만들기----------------
df = data.frame(var1 = c(4,3,8),
                var2 = c(2,6,1))

# Elementwise 사칙연산 이용한 파생변수 생성
df$var_sum = df$var1 + df$var2
df$var_mean = df$var_sum/2

mpg_df$total = (mpg_df$city + mpg_df$highway)/2
summary(mpg_df)

# Function 이용한 파생변수 생성
# ifelse 조건문 함수
hist(mpg_df$total)

ifelse(mpg_df$total>=20,"pass","fail")
ifelse(mpg_df>=20,"pass","fail")

mpg_df$test = ifelse(mpg_df$total>=20,"pass","fail")
mpg_df

#빈도표 사용
#데이터의 각 값별 빈도를 출력해줌
table(mpg_df$test)
qplot(mpg_df$test)


# 중첩조건문 이용한 파생변수 생성
ifelse(mpg_df$total >= 30, 'A',ifelse(mpg_df$total>=20,'B','C'))
mpg_df$grade = ifelse(mpg_df$total >= 30, 'A',
                      ifelse(mpg_df$total>=20,'B','C'))

table(mpg_df$grade)
qplot(mpg_df$grade)

#------------------midwest 데이터------------------
midwest_df = as.data.frame(midwest)
midwest_df
