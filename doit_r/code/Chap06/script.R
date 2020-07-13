#-----------------데이터 추출----------------
exam = read.csv("data/csv_exam.csv")
view(exam)

#filter 함수 사용한 행 추출
filter(exam,class==1) 

#%>% pipe 사용
#%>%는 왼쪽 값을 오른족의 첫번째 arg로 입력
#함수안에 직접 입력하는것 보다 가독성이 좋음
exam %>% filter(class==1)
exam %>% filter(class==2)
exam %>% filter(class != 1)
exam %>% filter(class !=3)

exam %>% filter(math > 50)
exam %>% filter(math < 50)

# 논리연산자 사용한 여러 조건
filter(exam,class==1 | class == 2)
exam %>% filter(class ==1 & math>=50)
exam %>% filter(class ==1 | class==2)

# %in% 키워드 이용한 조건
exam %>% filter(class %in% c(1,2,3))
filter(exam,class %in% c(1,2,3))

# pipeline 이용한 할당
class1 = exam %>% filter(class==1)
#exam %>% filter(class==2) %>% class2 
class2 = exam %>% filter(class==2)

mean(class1$math) #1반 수학 평균
mean(class2$english) #2반 영어 평균균

# 다양한 산술연산자 이용한 조건찾기
exam %>% filter(math**2 == 2500)
exam %>% filter(science %% 10 == 0)
exam %>% filter(english %/% 10 == 8)

#------------------mpg 데이터-----------------
mpg_df = as.data.frame(mpg)
mpg_df %>% head()

#Q1
ifelse(mean(filter(mpg_df,displ<=4)$hwy) >
         mean(filter(mpg_df,displ>=5)$hwy),
       "4가 높음","5가 높음")

#Q2
ifelse(mean(filter(mpg_df,manufacturer=='audi')$cty)       > mean(filter(mpg_df,manufacturer=='toyota')$cty),
       "audi가 높음","toyota가 높음")

#Q3
mean(filter(mpg_df,manufacturer %in% 
                  c('chevrolet','ford','honda'))$hwy)

#-----------------컬럼만 추출--------------------   
#select 함수 이용한 컬럼 추출
select(mpg_df,hwy)

# %>% pipe  이용한 컬럼 추출
exam %>% select(math)
exam %>% select(class,math,english)

# - 이용한 제외 추출
exam %>% select(-math)
exam %>% select(-math,-english)


exam %>% filter(english>50)%>% select(math)
#exam %>% select(math) %>% filter(enlish>50) #반대로는 error

#pipe 가독성 늘리기 : %>% 뒤에서 줄바꿈
exam %>% 
  select(id,math) %>% 
  head()

#Q1
mpg_class_cty = mpg_df %>% 
  select(class,cty)
mpg_class_cty %>% head()

#Q2
mean(filter(mpg_class_cty,class=='suv')$cty)
mean(filter(mpg_class_cty,class=='compact')$cty)

#----------------순서대로 정렬하기--------------
#arrange 함수를 이용한 정렬
arrange(exam,math)
exam %>% arrange(math)

arrange(exam,desc(id))
exam %>% arrange(desc(id)) # 내림차순 정렬렬

exam %>% arrange(math,english)

#Q1
mpg_df %>% 
  filter(manufacturer=='audi') %>% 
  arrange(desc(hwy)) %>% 
  head(5)

#---------------파생변수 추가하기----------------
# 산술연산자가 아닌 mutate 함수 이용한 파생변수 추가
