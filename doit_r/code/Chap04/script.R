# 데이터 프레임 만들기
english = c(90,80,60,70)
math = c(50,60,100,20)

df_midterm = data.frame(english,math)
df_midterm

mean(df_midterm$english)
mean(df_midterm$math)

df_midterm = data.frame(english = c(90,80,60,70),
                        math = c(50,60,100,20),
                        class = c(1,1,2,2))
df_midterm

# 퀴즈
data.frame(제품 = c('사과','딸기','수박'),
            가격 = c(1800,1500,3000),
            판매량 = c(24,38,13))

mean(data.frame(제품 = c('사과','딸기','수박'),
                  가격 = c(1800,1500,3000),
                  판매량 = c(24,38,13))$가격)

mean(data.frame(제품 = c('사과','딸기','수박'),
                  가격 = c(1800,1500,3000),
                  판매량 = c(24,38,13))$판매량)

# 외부 데이터 불러오기(엑셀)
install.packages("readxl")
library(readxl)

#상대경로의 BASE PATH는 프로젝트 폴더
df_exam = read_excel('data/excel_exam.xlsx')
df_exam

mean(df_exam$english)
mean(df_exam$math)
mean(df_exam$science)

# 첫째행이 컬럼명이 아닌 경우에는,  col_names = FALSE/F
df_exam_novar = read_excel('data/excel_exam_novar.xlsx',col_names=FALSE) 
df_exam_novar

# 여러개 시트 중 특정 시트만 불러오기
# sheet = "시트명"또는 sheet = 시트번호
# sheet 옵션 없을 경우 자동 첫번째 시트인듯?
df_exam_sheet = read_excel("data/excel_exam_sheet.xlsx", sheet = "Sheet3")

df_exam_sheet

# 외부 데이터 불러오기(CSV)
df_csv_exam = read.csv("data/csv_exam.csv")
df_csv_exam

# 문자가 포함된 CSV 파일 불러오기
# stringAsFactors = F
# (옵션명이 어디는 Snake 표기법이고 어디는 Camel 표기법이고 중구난방이네)
df_csv_exam = read.csv("data/csv_exam.csv",stringsAsFactors = F)

# 데이터프레임 CSV파일로 저장하기
write.csv(df_midterm,"data/df_midterm.csv")

# 외부 데이터 불러오기(RDS)
rm(df_midterm) # 변수 삭제
df_midterm = readRDS("data/df_midterm.rds")

# 데이터프레임 RDS파일로 저장하기
saveRDS(df_midterm,"data/df_midterm.rds")