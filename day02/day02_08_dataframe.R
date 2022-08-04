#day02_08_dataframe.R
#데이터프레임 : 쉽게 엑셀과 동일
#가장 많이 쓰이는 자료구조
#매트릭스와 동일한 유형이지만
#다양한 자료형을 가질 수 있는 구조

name <- c('kim','cho','lee')
age <-c(20,25,30)
data.frame(name,age)

#변수를 이용하여 만들면 변수명이 column명으로 지정됨
#dataframe은 정형 데이터를 만드는 방법으로 
#메타정보를 자동으로 만듬
df <- data.frame(name,age)
df

#실습하기. df의 1행 1열의 데이터를 조회해주세요
df[1,1]
df[1,'name']
df['1','name']

#df애서 name열을 조회하기
df[,'name']

df$name

#실습하기. 데이터프레임에 열을 추가하기
#student열을 추가하여 T,F,F 추가하기

df[,'student'] <- c(T,F,F)
df$student <- c(F,T,F)
df
#student <- c(T,F,F)
#data.frame(name,age,student)
#df <- data.frame(name,age,student)

# rowname을 지정하기
df <- data.frame(df, row.names = c(1001,1002,1003))
df
#실습하기 df에서 rowname이 1002이 데이터를 조회해주세요. 
df['1002',]

#열 지우기
#실제로 지워지지 않습니다
#지워진 형태로 조회가 됩니다
df[, -1]
df[, -2]
df[,c(2,3)]
subset(df,select=-name)
subset(df,select=c(age,student))

#rowname을 값으로 추가하는 경우
rownames(df) #row name 검색
df[,'NO'] <- rownames(df) #rowname을 값으로 추가
df

#rowname을 초기화
rownames(df) <- NULL
df

#df에서 2행, 3행의 데이터를 조회해주세요
df[c(2,3),]
df[c(F,T,T),]

#df에서 student가 FALSE인 데이터만 조회하세요.
df$student
df$student == FALSE
df[df$student == FALSE,]

#실습하기 df에서 age가 25 이상인 데이터의 name과 age만 조회해주세요
df[df$age >= 25, -c(3,4)]
df[df$age >= 25, c('name','age')]








