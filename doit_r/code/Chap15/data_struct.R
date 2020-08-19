#----------------15-3. 데이터 구조-------------------
# 벡터
a = 1
class(a)
b = "hello"
class(b)

# 데이터 프레임
x1 = data.frame(var1 = c(1,2,3),
                car2 = c("a","b","c"))
class(x1)

# 매트릭스
x2 = matrix(c(1:12),ncol = 2)
x2
class(x2)

# 어레이
x3 = array(1:20, dim = c(2,3,5))
x3
class(x3)

# 리스트 : 모든 데이터구조를 원소로 가질 수 있는 데이터구조
x4 = list(f1 = a,
          f2 = x1,
          f3 = x2,
          f4 = x3)
x4$f4 #리스트의 key 호출
x4[2] #리스트 indexing
class(x4)
