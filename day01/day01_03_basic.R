# day01_03_basic.R

#변수
### 변화하는 수
### 이름 규칙: 영문 소문자로만 하기

# 변수를 만드는 3가지 방법
a <- 1
b = 2
3 -> c

1+a
2+a
3+a
a = 5
d <- 5
d

library(lubridate)
#현재 날짜를 crr변수에 저장하기
crr <- now()
crr

#실습하기, crr의 월을 2월로 변경해주세요
crr - months(5)
month(crr) <- 2
crr

#변수 만드는 단축키
# alt/option + -

# 함수
#사전에 특정한 동작을 하도록 만들어진 명령문의 집합
#() 들어가면 함수
#내장 함수, 외장함수(외장함수, 커스텀함수)
#내장함수: R이 기본적으로 가지고 있는 함수
#외장함수: install.package를 이용하여 설치하는 함수
#커스텀함수: 내가(분석가가) 직접 만드는 함수

print('안녕')

#총합
sum(1,2,3)
1:3
sum(1:3)

#최솟값
min(1:10)

#최댓값
max(1:10)

#평균
mean(1:10)

#중앙값
median(1:10)

#객체의 타입을 확인
typeof('문자')
typeof(1)
typeof('1')

#소수관련 함수들
#X보다 큰 수 중 가장 작은 정수
ceiling(5.5)
ceiling(-5.5)
ceiling(6.3)

#floor: 내림
floor(5.5)
floor(-5.5)

#trunc: 버림
trunc(5.5)
trunc(-5.5)

#반올림: round
#r 은 go to the even digit의 기준으로 반올림을 실행
#짝수값을 취하는 형태로 반올림의 기준이 작동
round(0.5)
round(1.5)
round(2.5)
round(3.5)

round(4.65)
round(4.65, 1) #소수 1번째까지 표기해라
round(4.65, 2)

#R에서 0을 처리하는 방법
#0이 4개를 넘어가면 지수부로 표시합니다
1000
10000
100000

#비교연산자
#무조건 결과값이 TRUE, FALSE로 조회됩니다
10 == 10
10 != 10
10 > 10
10 >= 10

## 문자의 비교도 가능합니다.
'가' == '가'
'가' > '가'
삼단논법이란 A>B이고, B>C이면 A는 C보다 크다. 
# 다음의 값은 같은 값일까요?
1 == '1'
1 == 1
1 == TRUE
'1' == TRUE

#함수를 통하여 확인하기
identical(1, '1')
typeof(1) == typeof('1')

#논리 연산자
#! 반전(역)
!T
!F

# | or 연산 두 조건 중에서 하나만 참이여도 참
T | F
F | T 
T | T
F | F

# & and 연산: 두 조건 모두 참이여야함
F & T
T & T
(1==1)&(1==2)

#NA와 NULL 
#NA
1 + NA
sum(1,1,NA)
sum(1,1,NA,na.rm=T)
mean(1:3)
mean(c(1,2,3,4, NA))
mean(1,2,3)
#NULL
1 + NULL 
sum(1,1,NULL)
mean(c(1,2,3,4, NULL))
typeof(2)
typeof(2.0)

#combine:인수를 결합하는 함수
#인수가 데이터 형이 다르다면 인수 중 가장 큰 데이터 형으로 변경
#인수가 숫자 문자 논리값의 조합이면 문자로 변경로 변경
#가장 많이 사용되는 함수
c(1)
c(1:10)
c(1,3,2,4,9,2)
c('1',2)
typeof(c('1',2))

#기술통계는 데이터를 요약 묘사 설명하는 통계 기법
# - 총합, 최댓값, 최솟값, 평균, 중앙 값, 최빈값(mode)
mode(c(1,1,2,3))

install.packages('prettyR')
library(prettyR)
Mode(c(1,1,1,2))
