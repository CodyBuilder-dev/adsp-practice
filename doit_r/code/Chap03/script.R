# 3-1. 변수 이해하기
# 변수 선언
var1 = c(1,2,3,4,5)
var1

var2 = c(1:5)
var2

var3 = seq(1,5)
var3

var4 = seq(1,10,by = 2)
var4

var5 = seq(1,10,by=3)
var5

# Elementwise Plus
var1
var1+2

var6 = seq(1,10)
var4+var6

# 문자열 변수
str1 = 'a'

str2 = 'text'

str3 = 'Hello World'

str5 = c('Hello!','World','is','good!')
str5
# 3-2. 함수 이해하기

mean(var1)

mean(c(1,2,3))

#mean(x = c(1,2,3)) #등호는 에러 발생
mean(x <- c(1,2,3)) #화살표는 변수초기화 + 함수 인자전달이 동시에 가능

paste(str5,collapse = ',')

x_mean = mean(c(1,2,3))
z = mean(z)

# 3-3 패키지 이해하기
# 패키지 설치
install.packages("ggplot2")

# 패키지 로드
library(ggplot2)

# 패키지 내 함수 사용
qplot(str5)

qplot(data = mpg,x= cty)

?library

#Q1
score = c(80,60,70,50,90)
score
#Q2
mean(score)
#Q3
score_mean = mean(score)
