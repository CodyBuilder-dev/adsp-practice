# adsp-practice
8월 ADsP 시험준비를 위한 실습 Repo

## R 학습의 목적과 그 범위
### 목적
데이터 분석에 필요한 정도로 학습
ADsP/ADP 시험에 통과가 가능할 정도로 학습

범용적인 목적의 Programming을 하기 위해 배우는 것은 아님
(python으로 충분하다!)

### 범위
ADsP 관련 시험에서 요구되는 정도의 문법 수준

### 학습 교재
|제목|특징|
|---|---|
|ADsP 한권으로 끝내기(ADsP 시험대비 개념서)|시험암기내용+R문법+통계개념|
|Doit! R|R 기본 문법 + 데이터 처리 및 시각화 예제(분석X)|
|R까기2|R기본 문법  + 좀더 심화된 통계학 예제 |
|고급 R 활용| 통계학적 개념들(분포함수, 추론)의 R 구현 위주|
|누구나 통계 with R | 통계학적 개념들의 R구현 위주| 
|앤디 필드의 유쾌한 R통계학 | 통계학적 개념들의 R구현 위주|

위의 교재 중 마음에 드는 교재 몇권 사서 뽀개기

### git 필기 방식
*기존 방식*  
책의 내용을 그대로 마크다운에 옮기는 것 -> 비효율적!  
(적는데 드는 노력에 비해 나중에 다시 읽을 일이 없음)

*대안*  
책에 소개된 개념 - 해당 개념 등장 페이지 - 관련 링크  
정도만 정리해서, 나중에 찾아보기 쉽도록 정리

## 디렉토리 구조
각 폴더 : 교재별 실습 내용을 담는 폴더  
ㄴdata : 교재 내 실습을 위한 데이터  
ㄴcode : 교재 내 실습 R script

## 레퍼런스 및 개념 정리
### 데이터 이해
|내용|링크|
|---|---|
|빅데이터 위험 요소(=위기 요인)과 통제 방안|[책임 훼손]()|
|SOW(Statement of Work)||
|데이터매핑||
|DIKW||

### 데이터 분석 기획
|내용|링크|
|---|---|
|데이터 문제 탐색의 도구||
|상향식/하향식 접근||
|과제 우선순위 결정||
|데이터분석 방법론|[정리]()<br>[KDD(Knowledge Discover in Database)]()<br>[CRISP-DM](https://blog.naver.com/iwodus/220939287519)|
|데이터 분석 조직구조|집중구조/기능구조/분산구조/복합구조|
|정형-비정형-반정형||
|분석 프로젝트 관리||
|포트폴리오 사분면 분석|[링크](https://m.blog.naver.com/PostView.nhn?blogId=nknn2004&logNo=221712885140&proxyReferer=https:%2F%2Fwww.google.com%2F)|
|빅데이터 거버넌스||
### 통계
|개념|설명|링크|해결가능 문제|
|---|---|---|---|
|자료의 척도|명목,구간,등간,||||
|회귀모델 변수 선택법||||
|Lasso 회귀분석||||
|Lidge 회귀분석||||
|통계학적 거리의 정의(유클리드,맨해튼,마할라노비스,민코프스키)|||
|등분산 검정|||t테스트 전에, 두 표본이 동분산인지 검정|
|데이터 정규성 검정 방법|[샤피오-윌키스]()||
|회귀분석의 검정 방법|[t-test]()[통계적 유의성 분석:f-test]()[더빈-왓슨]()||
|붓스트랩 방식||||
|분해 시계열|[링크](https://otexts.com/fppkr/components.html)|||
|연관분석|[추천을 위한 연관규칙](https://needjarvis.tistory.com/59)|||
|연관분석과 인과관계||||
|연관규칙의 향상도,|[링크](https://needjarvis.tistory.com/59)|||
|교차분석(Cross Tabulation)||||
|산포의 척도||||
|회귀분석의 p value 해석||||
|상관계수|[피어슨]()[스피어만]()|||
|전진선택법/후진선택법|||
|변수 선택 기준(Cp,AIC,BIC)||
|등간척도||
|비모수 검정의 종류|[]()|
|다중회귀 잔차의 해석||
|혼동행렬(=오분류표) 해석||
|사회연결망 분석||
|ROC 분석||
|kappa||
|데이터마이닝의 단계||
|Bias-Variance Trade off||
|회귀분석의 결정계수||
### 머신러닝
|개념|설명|링크|해결가능 문제|
|---|---|---|---|
|의사결정나무 용어|[순수도]()|||
|의사결정나무의 정지규칙|리프를 결정하고 더 내려가지 않도록 하는 규칙|||
|의사결정나무의 알고리즘|가지를 늘려나가는 알고리즘|||
|K 평균 군집(ADsP용)||||
|군집분석 방법론|[주요 군집화 방법](https://m.blog.naver.com/PostView.nhn?blogId=asus1984&logNo=120065207734&proxyReferer=https:%2F%2Fwww.google.com%2F)<br>[주요 군집화 방법](https://finches.tistory.com/42)|||
|군집 형성 방법론|[병합법]()||
|군집 내 연결법|단일연결법,완전연결법,평균연결법,와드연결법|
|계층적 군집분석, 비계층적 군집분석||||
|코호넨 네트워크 군집||||
|SOM 프로세스|||
|결측값 처리|[imputation]|||
### R
|내용|링크|
|---|---|
|procomp함수||
|anova함수||
|dist함수||
|rbind함수||
|4분위수 함수||
|hclust||
|glm함수|[Arguments]()|
|step함수|[Arguments]()|
|par함수||
|t.test함수||
|sample 함수||
|R에 KoNLPY설치 에러가 발생하면?|[링크](http://blog.naver.com/PostView.nhn?blogId=jang0_0yw&logNo=221838447170&redirect=Dlog&widgetTypeCall=true&directAccess=false)|
