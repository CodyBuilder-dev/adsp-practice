#------------------3.1 이항분포----------------------
# 조합 (nCr)
choose(10,3) # factorial(10)/(factorial(3)*factorial(7))

# 이항분포 (Binom(n,θ))
# 횟수로부터 확률 계산
dbinom(3,10,0.4) # choose(10,3) * 0.4**3 * 0.6**7

dbinom(0:10,10,0.5) # 동전 10번 던졌을 때 확률
barplot(dbinom(0:10,10,0.5),names.arg=0:10,las=1)
barplot(dbinom(0:10,10,0.5),names.arg=0:10,las=1,ylim=c(0,0.25))

# 이항분포의 누적확률분포함수(CDF) 
pbinom(2,10,0.4) # dbinom(0) + dbinom(1) + dbinom(2)
pbinom(0:10,10,0.5)
barplot(pbinom(0:10,10,0.5),names.arg=0:10,las=1)

# 이항분포의 역함수
#qbinom(0.5,3,0.5)
#rbinom(10,3,0.5)