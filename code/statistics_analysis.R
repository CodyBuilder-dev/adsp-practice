#===========ADsP 데이터 분석 과목================
#=========2장. R 통계분석==============
#1. 통계학 개론 - 추가 문서(구글독스 등) 참조
#기초 통계학 개념과 용어에 대해 설명해주는 부분
#1-1. 표본 추출
# 1) 단순 임의추출
sample(1:10,4)
sample(1:10,4,replace=TRUE)

# 2) 층화 임의추출
install.packages("sampling")
library(sampling)
x = strata(c("Species"),size= c(3,3,3),method = "srswor",data=iris)
getdata(iris,x)

#2. R 기초 통계분석
#2-1 기술통계(Descriptive Statistics)
head(iris)
# 1) 평균값 
# 문법 : mean(데이터)
mean(iris$Sepal.Width)
mean(iris["Sepal.Width"]) # 계산 안됨. 이유는는 모르겠음

#2-2 회귀분석
#2-2-1 단순선형회귀
# 0) 선형회귀의 4가지 기본가정 https://kkokkilkon.tistory.com/175
# 1. 선형성
df = iris[,-5]
plot(df)

model = lm(Sepal.Length ~., df)
summary(model)

# Petal변수들의 영향을 제거한 잔차를 추가
df$Rest.Sepal.Width = df$Sepal.Length - model$coefficients[["Petal.Length"]] * df$Petal.Length - model$coefficients[["Petal.Width"]] * df$Petal.Width
head(df)
plot(df)

# Sepal.Width만 독립적으로 선형회귀
summary(lm(Sepal.Length ~ Sepal.Width, df))

# 2. 독립성
# 강제 상관성 변수 추가
dt = iris[, -5]
dt$Petal.Length1 = dt$Petal.Length + round(rnorm(nrow(dt), 0.05, 0.05), 1)
dt$Petal.Length2 = dt$Petal.Length + round(rnorm(nrow(dt), 0.05, 0.05), 1)
dt$Petal.Length3 = dt$Petal.Length + round(rnorm(nrow(dt), 0.05, 0.05), 1)

plot(dt)
# 다중공선성 존재시의 회귀모델
mdl = lm(Sepal.Length ~ ., dt)
summary(mdl)

# 다중공선성 제거(변수선택법 , Stepwise)
mdl_step <- step(mdl)
summary(mdl_step)

# 3. 등분산성
dt = iris[, -5]
# 강제로 등분산성을 위배하는 변수 ydata 만들기
set.seed(1)
dt$ydata = c(round(rnorm(75, 1, 0.3), 1),
                    round(rnorm(75, 10, 0.3), 1))
# dt의 분포를 시각적으로 확인하기
head(dt)
plot(dt)


# 4. 비상관성
# 5. 정상성

# 1) 데이터 준비
set.seed(2)
x = runif(10,0,11) # x는 평균 0, 표준편차 11인인 균등분포로부터 추출
e = rnorm(10,0,0.2) # e는 평균 0, 표준편차 0.2인 정규분포로부터 10개 추출
y = 2+3*x + e # y도출

dfrm = data.frame(x,y)
dfrm
plot(dfrm)

# 2) 회귀 적용
model = lm(y~x,data=dfrm)
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