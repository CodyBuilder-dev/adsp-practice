#-----------------09-1 복지패널데이터 준비------------
install.packages("foreign")

library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)

raw_welfare = read.spss(file = "data/Koweps_hpc10_2015_beta1.sav",
                        to.data.frame = T) # to.data.frame이 없을 경우 list 타입으로 반환됨
welfare = raw_welfare

#데이터 살펴보기
head(welfare)
tail(welfare)
view(welfare)
dim(welfare)
struct(welfare)
summary(welfare)


#변수명 이해하기 쉽게 바꾸기
# rename(데이터, 새컬럼명=구컬럼명,...)

welfare = rename(welfare,sex = h10_g3,
                 birth = h10_g4,
                 marriage = h10_g10,
                 religion = h10_g11,
                 income = p1002_8aq1,
                 code_job = h10_eco9,
                 code_region = h10_reg7)

#----------09-2. 성별에 따라 월급이 다를까?---------
# 성별변수 확인
class(welfare$sex)
table(welfare$sex)

#성별 이상치 제거
welfare$sex = ifelse(welfare$sex == 9,NA,welfare$sex)
table(is.na(welfare$sex))

#성별 이름으로 변경
welfare$sex = ifelse(welfare$sex == 1,'male','female')
qplot(welfare$sex)


# 월급변수 확인
#table(welfare$income) 연속변수라서 table로 빈도는 불가
summary(welfare$income)
qplot(welfare$income) + xlim(0,1000)

# 월급 이상치 제거
welfare$income = ifelse(welfare$income %in% c(0,9999),NA,welfare$income) # %in% 연산자 이용

table(is.na(welfare$income))

#성별-월급 관계 분석
# 성별별 평균임금부터 알아보자
sex_income = welfare %>% 
  filter(!is.na(income)) %>%
  group_by(sex) %>%
  summarise(mean_income = mean(income))
sex_income

ggplot(sex_income,aes(x = sex,y = mean_income)) + geom_col()

#---------09-3.몇 살에 월급을 가장 많이 받을까------
# 태어난 연도 확인
class(welfare$birth)
#table(welfare$birth)
summary(welfare$birth)      

# 태어난 연도 변수를 이용한 나이 파생변수 도출
welfare$age = 2020 - welfare$birth
summary(welfare$age)
qplot(welfare$age)

# 나이- 월급 관계 분석
age_income = welfare %>%
  filter(!is.na(income)) %>%
  group_by(age) %>%
  summarise(mean_income = mean(income))

age_income

ggplot(age_income,aes(x=age,y=mean_income)) + geom_line()

#-------09-4.어떤 연령대의 월급이 가장 많을까------
# 연령대 파생변수 만들기
welfare = welfare %>%
  mutate(ageg = ifelse( age < 30, "young",
                        ifelse(age <= 59,"middle","old")))
table(welfare$ageg)

qplot(welfare$ageg)

# 연령대 - 월급 관계
ageg_income = welfare %>%
  filter(!is.na(income)) %>%
  group_by(ageg) %>%
  summarise(mean_income = mean(income))

ageg_income

# 그래프로 표현
ggplot(ageg_income,aes(x=ageg,y=mean_income)) +
  geom_col() + 
  scale_x_discrete(limits=c('young','middle','old'))
# scale_x_discrete에 x축 순서 설정 가능

#-------09-6 어떤 직업이 월급을 많이 받을까---------
# 직업 변수 전처리
class(welfare$code_job)

#코드북에서 불러오기
library(readxl)
list_job = read_excel("data/Koweps_Codebook.xlsx",col_names = T , sheet = 2)
head(list_job)
dim(list_job)

# join을 통해 결합
welfare = left_join(welfare,list_job,id = "code_job")

welfare %>%
  filter(!is.na(code_job)) %>%
  select(code_job,job) %>%
  head(10)

# 직업 - 월급 관계 분석
job_income = welfare %>%
  filter(!is.na(job) & !is.na(income)) %>%
  group_by(job) %>%
  summarise(mean_income = mean(income))

job_income_desc = job_income %>%
  arrange(desc(mean_income))


ggplot(job_income_desc,aes(x=reorder(job,mean_income),y=mean_income)) +
  geom_col() +
  coord_flip()
