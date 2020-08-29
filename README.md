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
|제목|링크|
|--|--|
|개발자가 데이터 분석 전문가 되기|[링크](https://wikidocs.net/48087)|

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
|데이터 사이언티스트의 필요 역량|[링크](https://devyurim.github.io/data%20science/adsp/2018/08/20/ADsP-6.html)|
|DIKW 피라미드의 개념|[링크](https://squirrel-bigdata.tistory.com/25)|
|빅데이터가 만들어내는 변화/빅데이터의 역할|[링크](https://m.blog.naver.com/PostView.nhn?blogId=jump_penguin&logNo=20206787912&proxyReferer=https:%2F%2Fwww.google.com%2F)|
|빅데이터 위험 요소(=위기 요인)과 통제 방안|[링크](https://needjarvis.tistory.com/473)|
|정형-비정형-반정형 데이터|[링크](https://needjarvis.tistory.com/502)|
|데이터 웨어하우스/데이터 마트|[정의](https://middleware.tistory.com/entry/%EB%8D%B0%EC%9D%B4%ED%84%B0-%EC%9B%A8%EC%96%B4%ED%95%98%EC%9A%B0%EC%8A%A4Data-Warehouse-%EB%B0%8F-%EB%8D%B0%EC%9D%B4%ED%84%B0-%EB%A7%88%ED%8A%B8Data-Mart)<br>|
|데이터 웨어하우스의 4가지 특징(W.H Inmon)|[링크](https://m.blog.naver.com/PostView.nhn?blogId=cat8815&logNo=70036491522&proxyReferer=https:%2F%2Fwww.google.com%2F)|

### 데이터 분석 기획
|내용|링크|
|---|---|
|분석기획의 방향성 도출, 주제유형|[링크](https://devyurim.github.io/data%20science/adsp/2018/08/21/ADsP-8.html)|
|분석과제 발굴을 위한 상향식/하향식 접근|[링크](https://plannoa.github.io/certificate/2019/03/17/ADsP-3-1-%EB%8D%B0%EC%9D%B4%ED%84%B0-%EB%B6%84%EC%84%9D-%EA%B8%B0%ED%9A%8D%EC%9D%98-%EC%9D%B4%ED%95%B4-3/)|
|하향식 접근법 - 비즈니스 모델 캔버스|[BM캔버스의 정의](https://m.blog.naver.com/mayanie/220822513011)<br>[비즈니스 모델 기반 분석과제 도출](https://dlsdn73.tistory.com/1133)|
|거시관점 메가 트렌드 STEEP|[STEEP의 개념](https://www.slideshare.net/kimseungha/steep-11363001)<br>[분석 예시](http://future.fki.or.kr/Common/Download.aspx?id=7667532c-0123-4e1e-8373-e4133f6dab3b)|
|데이터분석 프로세스 방법론|[3가지 총정리](http://blog.naver.com/PostView.nhn?blogId=iwodus&logNo=220679436727&parentCategoryNo=&categoryNo=30&viewDate=&isShowPopularPosts=true&from=search)<br>[KDD(Knowledge Discover in Database)](https://needjarvis.tistory.com/508)<br>[CRISP-DM](https://blog.naver.com/iwodus/220939287519)<br>[CRISP-DM](https://needjarvis.tistory.com/512?category=850659)|
|빅데이터 분석 계층적 프로세스 모델|[링크](https://needjarvis.tistory.com/513)|
|SOW(Statement of Work, 작업 기술서)|[사전적인 의미](https://sgpassion.tistory.com/7)<br>분석의 범주를 정의해 둔 것<br>빅데이터 분석 방법론 5단계 중 1단계 분석 기획에서 산출됨|
|데이터매핑|빅데이터 분석 방법론 5단계 중 2단계 데이터 준비,데이터 스토어 설계에서 산출됨|
|데이터 분석 프로세스별 입력/출력(산출물)|[입력,출력 쪽을 보면 됨](https://needjarvis.tistory.com/513)|
|분석 마스터플랜/거버넌스|[총정리](https://m.blog.naver.com/PostView.nhn?blogId=jdhpuppy&logNo=221343786927&proxyReferer=https:%2F%2Fwww.google.com%2F)<br>[링크](https://kim-mj.tistory.com/79)|
|분석 마스터플랜 - 포트폴리오 사분면 분석|[링크](https://m.blog.naver.com/PostView.nhn?blogId=nknn2004&logNo=221712885140&proxyReferer=https:%2F%2Fwww.google.com%2F)|
|분석 마스터플랜 - 데이터 분석과제 우선순위 사분면|[링크](https://m.blog.naver.com/PostView.nhn?blogId=nknn2004&logNo=221712885140&proxyReferer=https:%2F%2Fwww.google.com%2F)<br>[우선순위 조정](https://m.blog.naver.com/PostView.nhn?blogId=jdhpuppy&logNo=221343786927&proxyReferer=https:%2F%2Fwww.google.com%2F)|
|분석 거버넌스(분석수준 진단)|[링크](https://m.blog.naver.com/PostView.nhn?blogId=liberty264&logNo=221012000376&proxyReferer=https:%2F%2Fwww.google.com%2F)|
|분석 프로젝트 관리포인트|[링크](https://needjarvis.tistory.com/533)<br>[링크](https://post.naver.com/viewer/postView.nhn?volumeNo=27649869&memberNo=22344892)|

### 통계
|개념|링크|설명|해결가능 문제|
|---|---|---|---|
|자료의 척도(명목,서열,등간,비율)|[링크](https://m.blog.naver.com/PostView.nhn?blogId=sgjjojo&logNo=221270160250&proxyReferer=https:%2F%2Fwww.google.com%2F)|||
|회귀모델 변수 선택법(전진,후진)|[링크](https://rpago.tistory.com/15)|||
|Lasso/Ridge 회귀분석|[링크](https://rk1993.tistory.com/entry/Ridge-regression%EC%99%80-Lasso-regression-%EC%89%BD%EA%B2%8C-%EC%9D%B4%ED%95%B4%ED%95%98%EA%B8%B0)|||
|변수 선택 기준(Cp,AIC,BIC)||
|회귀분석의 검정 방법|[t-test]()[통계적 유의성 분석:f-test]()||
|paired t 검정||
|회귀분석에서 상관계수와 결정계수의 뜻과 수식||
|상관계수|[피어슨]()[스피어만]()|||
|켄달과 스피어만의 순위상관계수||
|회귀분석의 p value 해석||||
|다중회귀 잔차의 해석||
|로지스틱 회귀분석의 odds||
|교호작용|[링크](https://dermabae.tistory.com/189)|두 독립변수가 상호작용을 일으켜 새로운 영향을 일으키는 것|||
|F분포의 용도와 카이스퀘어 분포의 용도|||
|등분산 검정|||t테스트 전에, 두 표본이 동분산인지 검정|
|분산의 동일성과 F 분포||
|데이터 정규성 검정 방법|[샤피오-윌키스]()||
|자기상관의 존재성 여부 검증|[더빈-왓슨]()||
|비모수 분포 간의 차이 검정|[크루스칼-왈리스 검증]()|||
|카이제곱검정|[]()|
|붓스트랩 방식||||
|연관분석|[추천을 위한 연관규칙](https://needjarvis.tistory.com/59)|||
|연관분석과 인과관계||||
|연관규칙의 지지도,신뢰도,향상도|[링크](https://needjarvis.tistory.com/59)|||
|교차분석(Cross Tabulation)||||
|산포의 척도||||
|분해 시계열|[링크](https://otexts.com/fppkr/components.html)|||
|비모수 검정의 종류|[]()|
|혼동행렬(=오분류표) 해석||
|사회연결망 분석||
|ROC 분석||
|kappa||
|데이터마이닝의 단계||
|Bias-Variance Trade off||
|주성분분석(PCA)의 방법과 해석||
|PCA에서 잃은 정보량||
|분할표의 용도|두 명목변수 간의 연관성 확인|

### 머신러닝
|개념|설명|링크|해결가능 문제|
|---|---|---|---|
|결측값 처리|[imputation](https://m.blog.naver.com/hancury/220396495672)|||
|의사결정나무 정리|[링크](https://dreamlog.tistory.com/576)<br>[링크](https://ratsgo.github.io/machine%20learning/2017/03/26/tree/)|
|의사결정나무의 정지규칙||리프를 결정하고 더 내려가지 않도록 하는 규칙||
|의사결정나무의 알고리즘||가지를 늘려나가는 알고리즘||
|의사결정나무의 목표변수에 따른 분리기준 지표|[링크](https://m.blog.naver.com/PostView.nhn?blogId=pmw9440&logNo=221591538223&proxyReferer=https:%2F%2Fwww.google.com%2F)||
|군집분석 방법론|[주요 군집화 방법](https://m.blog.naver.com/PostView.nhn?blogId=asus1984&logNo=120065207734&proxyReferer=https:%2F%2Fwww.google.com%2F)<br>[주요 군집화 방법](https://finches.tistory.com/42)|||
|군집 형성 방법론|[병합법]()||
|통계학적 거리의 정의(유클리드,맨해튼,마할라노비스,민코프스키)|||
|상관관계가 존재할 경우 마할라노비스 거리||
|군집의 데이터가 범주형일 경우 자카드 거리|||
|군집 내 연결법|단일연결법,완전연결법,평균연결법,와드연결법|
|계층적 군집분석, 비계층적 군집분석||||
|K 평균 군집(ADsP용)||||
|코호넨 네트워크 군집||||
|혼합분포군집의 의미와 사용처||
|계층적 군집과 비계층적 군집 비교|||
|SOM 프로세스|||
|SVM의 최적 파라미터 선정 방법|[교차검증]() <br>[파라미터 튜닝]()|결국 궁극적인 최적파라미터 선정법은 없다!|||

### R
|내용|링크|설명|
|---|---|---|
|R 패키지별 역할|[결측값 관련 패키지 naniar](https://velog.io/@suzin/R-데이터-탐색-3.-Missing-Value결측치-NA)<br>|
|양적자료/질적자료|[질적자료/양적자료 그래프](https://m.blog.naver.com/roochicok/221648140099)|
|R에서 대괄호 2개 인덱싱|[반환값은 벡터](https://www.it-swarm.dev/ko/r/목록-또는-데이터-프레임-요소에-액세스하기위한-대괄호-와-이중-대괄호-의-차이점/967392444/amp/)|
|table()과 prop.table()||prop.table은 데이터의 상대도수 반환|
|cut()||연속형 변수를 명목형 변수로 변환하기 (점수->수우미양가)|
|Data.table과 Data.frame|[ADsP식 설명](https://m.blog.naver.com/PostView.nhn?blogId=liberty264&logNo=221014957263&proxyReferer=https:%2F%2Fwww.google.com%2F)<br>[R 스타일 설명](https://using.tistory.com/m/81)||
|apply vs sapply vs lapply vs colmeans||
|melt함수와 cast함수|||
|rm, ls함수||
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
|xtabs함수||
|chisq.test||
|symnum()||
|complete.case 함수||
|cluster 패키지 - agnes함수||병합적 방법으로 계층적 클러스터링 수행 함수|
|CreateDataPartition함수|[링크](https://rdrr.io/rforge/caret/man/createDataPartition.html)|데이터를 분할해주는 함수(분할된 인덱스를 반환함)|
|Scale함수|[링크](https://thebook.io/006723/ch09/02/01/)|데이터 정규화 함수(centering,scaling)|
|Nbclust 함수|[링크](https://www.rdocumentation.org/packages/NbClust/versions/3.0/topics/NbClust)|최적의 클러스터 개수를 찾아주는 함수|
|rpart패키지 - rpart함수|[예시](https://m.blog.naver.com/PostView.nhn?blogId=pmw9440&logNo=221591538223&proxyReferer=https:%2F%2Fwww.google.com%2F)<br>[예시](https://www.crocus.co.kr/1283)|R 의사결정 나무 패키지|

### R 개발환경
|내용|링크|
|---|---|
|R에 KoNLPY설치 에러가 발생하면?|[링크](http://blog.naver.com/PostView.nhn?blogId=jang0_0yw&logNo=221838447170&redirect=Dlog&widgetTypeCall=true&directAccess=false)|


## 후기
1. 1/2/3단원 모두 보기가 책 문제에 비해서 훨씬 헷갈리게 나왔다
(아 다르고 어 다른 보기가 많음)  
(지식의 헛점을 노리는 보기도 많음. 누가 봐도 평균이 다른 두 그래프를 주고 평균이 다르다 => 오답)
2. 3단원은 책 문제에 비해 훨씬 이론 원리 중심이었다
(시그모이드 함수식, 코사인 유사도 식 등)
