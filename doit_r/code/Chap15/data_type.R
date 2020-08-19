#-----------------15-2. 변수 타입----------------------
# 연속 변수 : numeric
var1 = c(1,2,3,1,2)
var1
# 범주 변수 : factor
var2 = factor(c(1,2,3,1,2))
var2

var3 = c("a","b","b","c",1)
var3
class(var3)

var4 = factor(var3)
var4

var5 = factor(c(1,3,5))
var6 = factor(c(5,8,"a"))
var7 = factor(c("a",5,7))

# 사칙연산 여부
var1 + 2 # numeric은 사칙연산 가능
var2 + 2 # factor는 연산시 NA반환

# 범주 여부
levels(var1) # numeric은 범주 미존재로 NULL 반환
levels(var2) # factor는 범주 존재

# 함수 여부
mean(var1) # numeric은 정상
mean(var3) # character도 NA 반환
mean(var2) # factor는 NA 반환

# 변수 타입 캐스팅
as.numeric(var2)
as.numeric(var3) # character는 적용 불가로 NA 반환
as.numeric(var4) # factor 내의 문자열도 숫자로 바꿔줌

as.numeric(var5) # factor 내 숫자에 상관없이 무조건 level의 순서대로 바꿔줌

as.Date(var1)
