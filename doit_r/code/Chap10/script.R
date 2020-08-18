#-----------10-1. 힙합 가사 텍스트 마이닝------------
# KoNLPY 의존성 설치
install.packages("rJava")
install.packages("memoise")
install.packages("hash")
install.packages("tau")
install.packages("Sejong")
install.packages("RSQLite")
install.packages("devtools")

# KoNLPY 설치
install.packages("http://cran.r-project.org/src/contrib/Archive/KoNLP/KoNLP_0.76.9.tar.gz",repos=NULL,type="source",INSTALL_opts = c('--no-lock'))

library(dplyr)
library(KoNLP)

#
useNIADic()
