#-------------15-1. 내장 함수로 데이터 추출---------
exam = read.csv("data/csv_exam.csv")
exam[] # 전체 데이터프레임 출력
exam[1,] #행 indexing

exam[exam$class==1,] #행 조건 출력
exam[exam$math>=80,]

exam[exam$class == 1 & exam$math >= 50,] # 논리연산자 이용


exam[,2] # 열 indexing
exam[,2:3] # 열 slicing

exam[,"class"] #열 이름 지정
exam[,c("class","math","english")] # 열 이름 slicing
