#day03_03_preprocessing.R
#데이터 전처리

install.packages('dplyr')
library(dplyr)

df_web <- read.csv('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/my_lib.csv', fileEncoding = 'cp949')
df_web

#결측치 확인
is.na(df_web)
table(is.na(df_web))

#각 컬럼에 대한 정보
str(df_web)

#상위 6개
head(df_web)

#데이터 분석의 목표: 전국 도서관의 시도명, 시군구명, 도서관 유형을 그룹화하기

#dplyr의 대표적인 함수
#filter(): 행의 추출
#-select(): 열 추출
#-arrange():정렬
# -mutate(): 열 추구
#-group_by(): 집단(그룹) 묶기

#분석에 필요한 데이터 열 추출하기
#시도명,시군구명,도서관유형
#df_web[,c('시도명','시군구명','도서관유형')] 조회기법은 나중에 분석을 못함

df_lib_g <- select(df_web, c('시도명','시군구명','도서관유형'))
head(df_lib_g)

#시도명으로 그룹화하기
#group_by(data,key1,key2,...,key n)
group_by(df_lib_g,시도명)

#시도명, 시군구명을 영문으로 변경하기
colnames(df_lib_g) <- c('sido','sigungu','type')
df_lib_g

#sido로 그룹화 하기
group_by(df_lib_g,sido)

#sido 그룹의 데이터 합산하기
count(group_by(df_lib_g,sido))

#코드의 실행결과를 변수에 넣는 방법
df_lib_g
sido_cnt <- group_by(df_lib_g,sido)
n<- count(sido_cnt)
head(n)

#파이프라인 코드로 변경하기
df_lib_g %>% 
  group_by(sido) %>%
  count() %>%
  head()

#실습하기. 파이프라인 코드를 활용하여 sido, sigungu, type으로 그룹화하여 나온 결과를 count(갯수)를 연산하여
#lib_cnt.csv로 저장
#저장하기: write.csv(경로)

df_lib_g %>%
  group_by(sido, sigungu, type) %>%
  count() %>%
  write.csv('lib_cnt.csv', row.names = F)

#시도별 도서관 갯수
table(df_lib_g$sido)










