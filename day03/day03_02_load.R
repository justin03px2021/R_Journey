#day03_02_load
#파일 불러오기
#-정형, 비정형 데이터 불러오기

#상대경로
#기준점이 존재하고, 설명을 해야하는 대상이 변경되는 경우
#내 pc에서 데이터를 불러오는 경우에 사용됨
 #절대경로로도 pc에서 데이터 불러오기
#R의 기준점 확인하기
getwd() #get working directory / 내가 작업하고 있는 pc의 경로 가져와라

#비정형 데이터 불러오기
#readlines(경로)

readLines('korea.txt',encoding = 'UTF-8')
readLines('bigdata.txt', encoding = 'UTF-8')

readLines('../hi/hi.R', encoding = 'UTF-8')


#절대경로
#대상의 위치와 상관없이 절대적인 주소를 말해주는 경우
#인터넷 url
readLines("/Users/chadwick/Desktop/R_ workspace/r/korea.txt", )

#----------------------------------------------------------------------------------------------------
#비정형 데이터 불러오기
#readlines(경로)

#수업 데이터
#github.com/luxdolorosa/data_set
txt1<-readLines('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/movie_review_01_cp949.txt',encoding = 'UTF-8')
txt1

#데이터의 길이 체크
length(txt1)

#실습하기. txt1에서 영화라는 단어가 포함된 데이터를 검색해주세요
#index와 데이터 자체 2가지 모두 조회
grep('영화',txt1)
txt1[grep('영화',txt1)]

#txt1의 40글자 이상인 데이터만 조회하기
grep(strrep('.',40),txt1)
txt1[grep(strrep('.',40),txt1)]
rep('.',40)

#실습하기.다음의 조건을 만족하는 리뷰 데이터를 조회해주세요
#영화라는 단어가 포함된 데이터
#20글자 이상
#힌트: grep은 2가지로 조건을 넣기가 어렵습니다
a<-grep('영화',txt1)
a
b<-grep(strrep('.',20),txt1)
b
txt1[a&b]
txt1[intersect(a,b)]

#다른 형태의 파일 가져오기
#-xlsx,hwp,docx,pdf
#가능은 하지만....xlsx과 pdf를 제외하면
#정확도가 낮거나 혹은 읽어오기 굉장히 어렵습니다

#getwd()

install.packages('pdftools')
library(pdftools)

#pdf 읽어오기
pdf1 <- pdf_text('movie_review_02.pdf')
pdf1

#조건을 기준으로 데이터를 분리
#\n\n을 기준으로 테이터 분리
txt_pdf<-strsplit(pdf1,'\n\n')
pdf1

# 실습하기. txt_pdf의 2번째 방을 조회해주셍
#ex) 비정형 데이터라는 ~~~~로 시작하는 데이터

txt_pdf[[1]][2]










#read.table": 엑셀 형태 (n x m)행과 열로 이루어진 구조를 가지는 데이터 읽어 오기

read.table('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_no_title.txt',fileEncoding = 'cp949')
mem1 <- read.table('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_no_title.txt',fileEncoding = 'cp949')

#실습하기,메타 정보 이름을 변경하기
#이름 성적 평균 변경하기
colnames(mem1)
colnames(mem1) <- c('이름','성적','평균')
mem1

#데이터의 요약 확인하기
summary(mem1)

#헤더 정보 (메타정보가 존재하는 데이터 읽어오기)
mem2 <- read.table('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_yes_title.txt', fileEncoding = 'cp949', header = T)
mem2
summary(mem2)
#상위 6개, 하위 6개 데이터만 조회하기
head(mem2)
tail(mem2)

#실습하기. mem2에서 평균열의 데이터가 80점 이상인 데이터만 조회해주세요
mem2
mem2$평균>=80
subset(mem2, mem2$평균>= 80)
mem2[mem2$평균>=80,]

read.table('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_noise.txt',fileEncoding = 'cp949', skip = 3, header = T)

#특정한 구분자가 있는 데이터 읽기
read.table('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_yes_sep1.txt', fileEncoding = 'cp949'
           , sep=';', header = T)

#특정한 구분자  중에서, 그리고 header가 있는 데이터를 읽는 함수
#read.csv()
read.csv('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_yes_sep2.txt',fileEncoding = 'cp949')

#특별한 데이터 읽기
#클립보드 os에서 ctrl + c를 눌렀을 때 데이터가 복사되어 있는 영역

#비정형 읽기
readLines('clipboard')

#정형 데이터 읽기
read.table('clipboard', sep = ',', header = T)
read.csv('clipboard')

#결측치를 처리하기
mem3<-read.csv('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_yes_NA.txt', fileEncoding = 'cp949')
mem3

#결측치 확인하기
is.na(mem3)
is.na(mem3$평균)
table(is.na(mem3))

#mem3에서 평균열의 평균을 연산해주세요
mean(mem3$평균)

#mem 3에서 요약정보 확인하기
#R에서 보정을 해주므로 결측치를 먼저 검사해야함
summary(mem3$평균)

#결측치 처리하기
#특정 값으로 채우기
#도메인을 잘 알고 있고, 해당 열의 데이터를 잘 알고 있는 경우
#그리고 결측치가 전체 데이터에서 차지하는 비율이 적을 경우 
is.na(mem3$평균)
mem3$평균[is.na(mem3$평균)]
mem3$평균[is.na(mem3$평균)] <- 0
mem3

#결측치 처리하기 
#특정 값으로 채워진 결측치 처리하기
mem4 <- read.csv('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_yes_NA2.txt',fileEncoding = 'cp949', na.strings = '-')
mem4

#결측치를 전체 평균 값으로 채우기
mem4$평균[is.na(mem4$평균)] <- 0
within(mem4, {'평균'<-ifelse(is.na(평균),0,평균)})
mem4
mean(mem4$평균)

#평균열의 값이 0인 데이터를 평균값으로 채우기
mem4$평균==0
mem4[mem4$평균==0,'평균']
mem4[mem4$평균==0,'평균'] <- mean(mem4$평균)
mem4

#실수 형태로 변경된 평군열을 정수형태로 변경하기
mem4
as.integer((mem4$'평균'))
mem4$평균<- as.integer((mem4$'평균'))
mem4

#순번이 있는 csv 파일 읽기
a<-read.csv('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/fruits.csv',fileEncoding = 'cp949', row.names = '순번')
a
#실습하기.csv 읽으면서 순번열을 행의 이름으로 잡아주세요



#데이터를 읽어오는 다양한 상황과 난이도
#상황
#1. 내부적 (우리 회사, 내가 만든 자료)
#난이도: 쉽다
#2. 외부적(가져가라고 만든 데이터, 가져가라고 만들진 않은 데이터)
#open api : 가져가라고 만든 데이터
#난이도:중급
#open API는 반드시!! 문서(약속,규약)가 존재함

#-일반 웹페이지: 가져가라고 만들진 않은 데이터
난이도: 상급
크롤링을 통해서 가능함


