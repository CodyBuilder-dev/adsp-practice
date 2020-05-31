#===========ADsP 데이터 분석 과목================
#=========2장. R 통계분석==============
#1. 통계학 개론 - 추가 문서(구글독스 등) 참조
#기초 통계학 개념과 용어에 대해 설명해주는 부분

#2. R 기초 통계분석
#2-1 기술통계(Descriptive Statistics)
data(iris)
head(iris)
# 1) 평균값 
# 문법 : mean(데이터)
mean(iris$Sepal.Width)
mean(iris["Sepal.Width"]) # 계산 안됨. 이유는는 모르겠음

#2-2 회귀분석
#2-2-1 단순선형회귀
# 1) 데이터 준비
set.seed(2)
x = runif(10,0,11) # x는 평균 0, 표준편차 11인인 균등분포로부터 추출
x
e = rnorm(10,0,0.2) # e는 평균 0, 표준편차 0.2인 정규분포로부터 10개 추출
e
y = 2+3*x + e # y도출
y

dfrm = data.frame(x,y)
dfrm
# 2) 회귀 적용
model = lm(y~x,data=dfrm)

# 3) 모델 적합성 검증
summary(model)

#2-2-2. 다중선형회귀
# 1) 데이터 준비
set.seed(2)
u = runif(10,0,11)
v = runif(10,11,20)
w = runif(10,1,30)
e = rnorm(10,0,0.1)
y = 3+0.1*u+2*v-3*w+e

dfrm = data.frame(y,u,v,w)
dfrm
# 2) 회귀 적용
model2 = lm(y~u+v+w,data=dfrm)
# 3) 모델 적합성 검증
summary(model2)
# -> F통계량 
# -> p value 또한 유의미함
# -> R squared값 (결정계수) 가 1로 매우 잘 설명

#2-2-3 식용 닭 데이터 적용
# 1) 데이터 준비
install.packages("MASS")
library(MASS)

#2-2-4 모델 적합성 진단 시각화

#2-2-5 최적 회귀방정식/설명변수 선택

#2-2-6 후진제거법 변수제거
#2-2-7 전진선택법

#2-3 정규화 선형회귀(Regularized Linear Regression)
#릿지 회귀
#라쏘 회귀
#엘라스틱넷 회귀

#3. 다변량 분석
#3-1 상관분석

#3-2 다차원 척도법
# 1) 데이터 준비
loc = cmdscale(eurodist)
loc
# 2) 

#3-3 주성분분석
#
install.packages("datasets")
library(datasets)
data("USArrests")
head(USArrests)

fit = prcomp(USArrests,scale=TRUE)
summary(fit)

#4. 시계열 예측
#4-1 비정상시계열과 정상시계열
#4-2 시계열 모형들
#4-2-1 나일강 데이터를 통한 시계열 분석
#4-2-2 영국 폐질환 사망자 시계열 분석
Nile
#4-2-3 ARIMA모델