#===========ADsP 데이터 분석 과목================
#========1장. R 기초와 데이터 마트==============
#1. R 기초
#1-1. R의 데이터 타입
#1-1-1. 통계학에서의 데이터 타입
# 범주형 변수 : 명목형(Norminal)/순서형(Ordinal)
# 수치형 변수 : 이산형(Discrete)/연속형(Continuous)
#1-1-2. R에서의 데이터 타입
#수치형-이산형 : integer type
#수치형-연속형 : numeric type
#범주형 변수 : factor type
#문자형 변수 : character type

#------------------------------------------
#1-2. R의 컨테이너 
# 컨테이너란? : 스칼라 데이터를 여러개 담는 객체
# R 데이터(컨테이너) 타입 : Vector/Matrix/Array/DF/List

#1-2-1. Vector
# 1) 벡터의 선언
# 문법 :  c(벡터 원소)
x= c(1,10,24,40) 
y = c('사과','망고')
y= ('사과','망고') # 벡터 선언시 반드시 c()필요
z = c(TRUE,FALSE) # 벡터 내의 데이터타입은 모두 동일해야 함
w = c(1,TRUE,"사과") 
v = c(1,FALSE) 
u = c(1,"사과") 
uu = c(TRUE,"망고") # 데이터타입이 다른 경우 묵시적으로 변환되어 저장

# 1-2-2. Matrix
# 1) Matrix 선언
# 문법 : matrix(c(벡터 내용),nrow,ncol,byrow=FALSE,dirnames)
n = matrix(c(1,2,3,4,5,6),ncol=2)
nn = matrix((1,2,3,4,5,6),ncol=2) # 반드시 내부에 vector를 써줘야함
nnn = matrix(c(1,2,3,4,5,6),nrow=2,ncol=2) #nrow/ncol 개수가 맞지 않으면, 알아서 개수 맞게 잘림

m = matrix(c(1,2,3,4,5,6),nrow=2)
mm = matrix(c("A","B","C","D","E","F"),nrow=2)

p = matrix(c(1,TRUE,"사과","망고",2,FALSE))
o = 5:10 # :연산자를 통한 수열선언의 경우에는 c()없어도 됨


#2) rbind,cbind로 matrix 행/열 추가
rbind(m,c(1,2,3)) #Not In-Place,즉 새로 객체를 생성한다
rbind(m,c(1,2)) #기존 matrix의 size와 일치하도록 bind해야 함

cbind(m,c(1,2))
cbind(m,c(1,2,3)) #기존 matrix의 size와 일치하도록 bind해야 함 

rbind(m,c("A","B","C")) 
rbind(mm,c(1,2,3))  # 기존 데이터타입과 다른 것을 넣을 경우 기존데이터 전체에 대해 묵시적 행행변환


#1-2-3. 데이터프레임
# 데이터프레임의 특징 : matrix와 유사하지만, 각 column간의 데이터타입이 다를 수 있다.
# 1) 선언
# 문법 : data.frame(열이름=데이터,열이름=데이터)
D = data.frame(income = c(1,2,3), age = c(10,20,30))
a1 = c(1,2,3)
b1 = c(10,20)
c1 = c("남","야")
D1 = data.frame(income = a1, age = b1,sex=c1) # 반드시 같은 size로 통일해야 함

#1-2-4. Array
# 1) 선언
# 문법 : array(데이터,dim=c(차원 정의))
array(c(1:20),dim=c(3,4,2)) #행,열,z축 순서
array(1:20,dim=c(3,4,2))
array(1:3,dim=1:3)

#1-2-5. List
# 타 언어의 dictionary 와 동일한 역할을 하는 컨테이너
# 1) 선언
# 문법 : list("키값"="벨류값",...)
dic = list("name"="김명수",age=28)
# 2) 접근
# 문법 : 리스트명[키] or 리스트명$키
dic."age" #error! 파이썬처럼 객체 개념이 아니므로 .으로는 찾을 수 없음
dic["age"] #[]대괄호를 통해서 찾아야 함
dic$name #R 고유의 $ 를통해 key 접근 가능
dic$"name" #""로도 가능 

# 1-2-6. 데이터 테이블
#개념 : 데이터테이블은 데이터프레임과 유사하지만,
#처리방식에 따라 데이터프레임보다 조금 빠르다

#------------------------------------------
#1-3 R의 연산자
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

#1-4 R 기초 함수
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

#4. 데이터 시각화
#산점도 그래프
plot
plot

#산점도 행렬

#히스토그램

#boxplot

##2.데이터 마트
#2 R 데이터 처리
#2-1 외부 데이터 불러오기
#1) CSV 불러오기
#read.csv("경로",header=TRUE)
#2) txt 블러오기
#read.table("경로",header=TRUE,sep=)
#3) 엑셀 불러오기
install.packages("RODBC")
library("RODBC")
new = odbcConnectExcel("경로")
yourdata = sqlFetch(new,"traffic_death")
yourdata
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

#3. 데이터 전처리
#3-1 결측치 처리

#3-2 이상값 검색
install.packages("outliers")
library(outliers)


##3.결측값 처리와 이상값 검색