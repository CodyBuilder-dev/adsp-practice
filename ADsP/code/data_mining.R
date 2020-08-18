
2_#===========ADsP 데이터 분석 과목================
#========3장.R 정형데이터 마이닝================
#개념 : 데이터에서 숨겨진 정보를 찾아내는 활동
#종류 : 분류,추정.예측,연관분석,군집,기술
#방법론 : 앞에서 배운 회귀,시계열,머신러닝 등을 총 동원

#1 분류분석
#1-1 선형회귀 vs 로지스틱 회귀
#로지스틱 회귀란? : 종속변수가 Categorical 인 경우에 사용
#(일종의 분류 문제로 볼 수 있음)
#로지스틱 회귀 하는 방법 : 종속변수를 로짓변환 후 단순선형회귀
#데이터 준비: 부화 온도와 거북이 성별 데이터
temp = c(27.2,27.7,28.3,28.4,29.9)
male = c(2,17,26,19,27)
female = c(25,7,4,8,1)
total = male+female
pmale = male/total
#1-1-1 선형회귀
z = lm(pmale~temp)
summary(z)

prop = coefficients(z)[1] + coefficients(z)[2]*temp
prop # 결과값이 1이 넘는 이상한 모델 생성

#1-1-2 로지스틱 회귀
# 1) 단순 로지스틱 회귀
logit = log(pmale/(1-pmale))
z1  = lm(logit~temp)
summary(z1)

# 2) 최대우도추정법 사용
logit = glm(pmale~temp,family="binomial",weights = total)
summary(logit)

#1-2 신경망 모형
# 1) 데이터 준비
install.packages("nnet")
library(nnet)
data = iris
Scale = data.frame(lapply(data[,1:4],function(x) scale(x)))
Scale$species = data$Species

# 2) 데이터 정규화
# 3) 신경망 모델 테스트

#1-3 의사결정나무 모형
# 1) 데이터 준비
# 2) 의사결정나무 모델 적용
#1-4 앙상블 모형
# 1) 데이터 준비

# 2) 배깅 모델 적용

# 3) 부스팅 모델 적용

# 4) 랜덤 포레스트 모델 적용

#1-5 SVM
#1) 데이터 준비
#2) SVM 모델 적용
#1-6 나이브 베이즈 모형
# 1) 데이터 준비
# 2) 나이브 베이즈 모델 적용

#1-7. 모델 평가

#2 군집분석
#2-1 계층적 군집
# 가장 유사한 개체를 묶음 > 묶은 개체들끼리 다시 묶음 > 반복
# 유사함의 척도 = 개체간의 거리
# 거리의 종류
# 수학적 거리
# 통계적 거리

#2-2 비계층적 군집
# k means 군집화

#2-3 혼합분포 군집

#2-4 자기조직화지도
# 일종의 인경신공망

#1) SOM 모델 적용
install.packages("kohonen")
library(kohonen)
data("wines")
head(wines)

set.seed(7)
wine.som = som(scale(wines),grid=somgrid(5,4,"hexagonal"))
summary(wine.som)

#2) SOM 모델 시각화
plot(wine.som, main = "wine data")
plot(wine.som, type="counts")
plot(wine.som, type="quality")
plot(wine.som, type="mapping")

#3 연관분석
