#day02_11_useful.R
#자주 쓰이는 함수들

vec1<-1:3
vec2<-4:6
vec3<-1:4

#합치기 - union
# : 중복을 제거
union(vec1, vec2)
union(vec1,vec3)

c(vec1,vec3)
#차집합 - set diff
setdiff(vec3,vec1)

#교집합 - intersect
intersect(vec3,vec2)
intersect(vec3,vec1)

#which(): 특정 값의 위치를 찾는 함수
x <- c(1:10)
x

#x에서 숫자 2의 위치를 반환해라
which(x==2)

#최대값과 최소값의 위치를 찾는법 [인덱스 찾는 법]
which.max(x)
which.min(x)

#split : 데이터 분리
#split(데이터, 분리할 기준)
# 주의사항: 데이터가 vector인 경우에는 분리 기준이 아닌 이름으로만 사용됨
a<-1:6
split(a,c(1,2,3))
split(c(1:11),c(1,2))

name <- c('cho','kim','lee','cho')
name
age <- c(20,20,30,40)
age

df <- data.frame(name,age)
df

split(df,df$name)
split(df,df$age)

#값을 나누기(자르기)
str1 <- 'word1.word2'
str1
strsplit(str1,'.', fixed = T)

#실습하기. str1을 .을 분리하여 word2만 조회해주세요

a<-strsplit(str1,'.', fixed = T)
a[[1]][2]

#subset: 설정하는 조건에 맞는 벡터 혹은 데이터프레임을 반환하는 함수
a <- 1:6
a
#a가 2보다 큰 데이터만
subset(a,a>2)

#df에서 name이 cho인 데이터만
subset(df, df$name == 'cho')
subset(df, name == 'cho')

#또는 or 조건
#name이 cho이거나 lee인 데이터만 조회
subset(df,name == 'cho' | name == "lee")
df

#그리고 and 조건
#-name이 cho이거나 age가 20인 데이터만 조회
subset(df,name=='cho' & age == 20)

#객체의 구조를 표현하는 함수
str(df)
str(a)

#객체의 요약정보 보기
#최솟값, 최대값, 중앙값, 평균값
summary(a)
summary(df)

#table(): 일원배치표에 입력한 항목의 빈도수를 계산
df$name
table(df$name)
table(df$age)
table(df)

#prop.table(): 갯수가 아닌 %로 확인
table(df$name)
prop.table(table(df$name))




