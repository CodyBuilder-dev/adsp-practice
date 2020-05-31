#===========ADsP 데이터 분석 과목================
#========1장. R 기초와 데이터 마트==============

#1. R 기초
#1-1. R의 변수 
# R 데이터(컨테이너) 타입 :
#스칼라+벡터/Matrix/Array/DF/List

#변수 선언
x = 6 # 스칼라일때는 c()필요없음
x = c(5) 
y=(TRUE,FALSE) # 스칼라 외 벡터 등은 반드시 c()필요
y = c(TRUE,FALSE)
z = c('사과','망고')
w = c(1,TRUE,"기모띠")
v = c(1,FALSE)
n = matrix(c(1,2,3,4,5,6),ncol=2)
m = matrix(c(1,2,3,4,5,6),nrow=2)
o = 5:10 # :연산자? 의 경우에는 c()없어도 됨
o


#rbind,cbind로 matrix 행/열 추가
rbind(m,c(1,2,3)) #Not In-Place,즉 새로 객체를 생성한다
cbind(m,c(1,2)) 

#데이터프레임
df = data.frame(income = c(1,2,3), age = c(10,20,30))
df

#Array 생성
array(c(1:20),dim=c(3,4,2)) #행,열,z축 순서
array(1:20,dim=c(3,4,2))
array(1:3,dim=1:3)

#List 생성
dic = list("name"="김명수",age=28)

#List key 접근
dic."age" #error! 파이썬처럼 객체 개념이 아니므로 .으로는 찾을 수 없음
dic["age"] #[]대괄호를 통해서 찾아야 함
dic$name #R 고유의 $ 를통해 key 접근 가능
dic$"name" #""로도 가능 

#데이터 테이블
#개념 : 데이터테이블은 데이터프레임과 유사하지만,
#처리방식에 따라 데이터프레임보다 조금 빠르다



#1-2 R 연산자
#R에서 다루는 데이터는 대부분 matrix,array형태이므로
#기본적으로 선형대수적 연산을 따라간다
a = 1:10
a+a #elementwise +
a-a #elementwise -
a/a #elementwise /
a*a #elementwise *

a = array(1:4,dim=c(2,3))
b = array(2:5, dim=c(3,2))
a%*%b #행렬곱

5*a #스칼라곱

#1-3 R 기초 함수
#규칙을 가진 수열 vector생성
rep(1,5)
rep(2:5,3)
seq(1,7)
seq(1,5,by=2)

# 전치행렬 생성
t(a)

# 역행렬 계산
solve(a%*%t(a)) 
solve(t(a)%*%a) #singular 매트릭스의 경우 에러 발생
#3차원 이상 array의 경우는?

#기초 연산함수
sum(a) #합
log(a) #자연로그값


#기초 기술통계값
mean(a) #평균
median(a) #중앙값
var(a) #분산
sd(a) #표준편차
cov(a,a) #공분산
cor(a,a) #상관계수
summary(a)#종합 통계값 확인
describe(a) #Skewness, Kurtosis 포함 종합 통계값 확인

#1-4 반복문
#for문
for(i in 1:19) {
  a[i] = i*i
}
a

#while문

#1-5 제어문
#if문
if(x == 1) {
  gender = 0
  new = 0
} else { #else는 반드시 if의 } 바로 뒤에 와야 함
  gender = 1
  new = 5 #keyword를 변수명으로 쓸 수 있음.. 심각한데
}

#ifelse 삼항연산자 구문
result = ifelse(x == 1,1,0)
result

#1-6 사용자함수
foo = function(a){
  isum = 0
  for(i in 1:a){
    isum=isum+i
    print("fuck")
  }
  print(isum)
  return(isum) #return은 타 언어와 동일
}
foo(5)

#1-7 외부 패키지 설치 & 불러오기
install.packages("psych") #install시 패키지명은 반드시 psych
library(psych) #import시에는 ""없어도 됨
library("psych") #""붙여도 사용 가능

##2.데이터 마트
#2 R 데이터 처리
#2-1 외부 데이터 불러오기
#1) CSV 불러오기

#2) txt 블러오기
#3) 엑셀 불러오기
#4) 내장 데이터 패키지로부터 불러오기
data(iris)
head(iris)

#2-2 데이터 reshaping 함수들
install.packages("reshape")
library("reshape")
install.packages("reshape2")
library("reshape2")




#2-3 SQLD로 SQL문 사용

#2-4 plyr패키지로 데이터프레임화

#2-5 데이터 테이블
#데이터프레임과 유사하지만 연산속도가 빠르다

#3. 데이터 전처리
#3-1 결측치 처리

#3-2 이상값 검색
install.packages("outliers")
library(outliers)

#4. 데이터 시각화
#산점도 그래프
plot
plot

#산점도 행렬

#히스토그램

#boxplot

##3.결측값 처리와 이상값 검색

#2장. 통계분석
##1. 통계학 개론

##2. 기초 통계분석

##3. 다변량분석

##4. 시계열 예측

#3장. 정형 데이터 마이닝
##1. 데이터 마이닝 개요

##2. 분류분석

##3. 군집분석

##4. 연관분석


#=========2장. R 통계분석==============
#1. 통계학 개론 - 구글독스 참조
#기초 통계학 용어 설명

#2. R 기초 통계분석
#2-1 기술통계(Descriptive Statistics)
#말 그대로 데이터에 대해 설명해주는 통계량들

#칼럼 평균
#특정칼럼 선택시 데이터$칼럼명
mean(iris$Sepal.Length)

#2-2 회귀분석

#시드 설정
set.seed(2)
#난수 추출

#데이터프레임 생성

#2-3 정규화 선형회귀(Regularized Linear Regression)
# 정규화면 보통  normalized를 떠올릴 텐데 왜 Regular인지 모르겠다

#릿지 회귀
#라쏘 회귀
#엘라스틱넷 회귀

#3다변량 분석
#3-1 상관분석

#3-2 다차원 척도법

#3-3 주성분분석

#4 시계열
#4-1 비정상시계열과 정상시계열

#4-2 시계열 모형들

#4-3 R ARIMA모델

#========3장.R 정형데이터 마이닝================
#개념 : 데이터에서 숨겨진 정보를 찾아내는 활동
#방법론 : 앞에서 배운 회귀,시계열,분류,머신러닝 등을 총 동원

#1 분류분석
#1-1 선형회귀 vs 로지스틱 회귀
#데이터 : 부화 온도와 거북이 성별 데이터

#1-2 신경망 모형

#1-3 의사결정나무 모형

#1-4 앙상블 모형
\
#1-5 SVM

#1-6 나이브 베이즈 모형

#2 군집분석
#2-1 계층적 군집

#2-2 비계층적 군집

#2-3 혼합분포 군집

#2-4 자기조직화지도

#3 연관분석
