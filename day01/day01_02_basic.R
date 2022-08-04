# day01_02_basic
install.packages('lubridate')
# 설치
library(lubridate)

# 날짜 관련된 패키지
# - 날짜는 국마다 표기법도 다르고, 요일도 다릅니다. 
# - 날짜는 데이터가 아니기 때문에 연산도 불가능
# '2022-07-02' + 1

#오늘 날짜 얻기
now()

#년도를 출력하기
year(now())

#월을 출력하기
month(now())

#일을 출력하기
day(now())

#1day(하루)를 데이터로 만들기
days(1)

#오늘에서 하루를 더해서 출력
now() + days(1)
now() - days(-1)

#실습하기. 오늘에서 일주일을 더해서 출력해주세요
now() + days(7)
now() + weeks(1)
