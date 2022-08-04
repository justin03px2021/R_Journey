#if(조건) {
#조건이 참인 경우 실행되는 코드
#}

if(TRUE) {
  print('조건이 참이므로 실행')
}
  
if(FALSE){
  print('조건이 거짓이므로 실행 안 됨')
}

if(FALSE) {
  print('조건이 참이므로 실행')
} else {
  print('조건이 거짓이면 실행')
}

#3, if-else if 문

if(조건1 ) {
  
} else if(조건2) {
  
} else if(조건2) {
  
}

season <- '겨울'

if(season == '봄') { 
  print('봄 여름이 최고')
} else if(season == '여름') {
  print('여름 여행이 최고')
} else if(season == '가을') {
  print('가을 여행이 최고')
} else {
  print('겨울이 최고')
}

season <- "어름"
season == '겨울' | season == '어름'
season <- '봄'
if(season == '봄' || season == '여름' || season == '가을') {
  sprintf('%s 여행이 최고죠', season)
} else {
  print('겨울 여행이 최고')
}
a <- TRUE
if(a) {
  print('good job')
  a <- FALSE
} else if(a == FALSE) {
  print('2nd try good job')
  a <- TRUE
}
 
# 실습하기. y가 3의 배수면 제곱을 출력해주시고 아니면 0을 출력하세요
# 제곱을 구하는 법 ^2
y <- 
if(y %% 3 == 0) {
  print(y^2)
} else {
  print(0)
}

#조금 특별한 조건문 ifelse()
#ifelse(조건, 참일때, 거짓일 때)
ifelse(TRUE,'참','거짓')
ifelse(1 != 1,'참','거짓')

# 실습하기 ifelse 를 활용하여 y가 3의 배수면 제곱을 출력 아니면 0을 출력

ifelse(y%%3 == 0, y^2, 0)

#실습하기 ifelse를 활용하여 x가 짝수면 짝수 출력 홀수면 홀수 출력
x <- 1
ifelse(x %% 2 == 0, '짝수', '홀수')
 
#4. switch 문
# swtich(expression, case1, case2, case 3, ... , default)

switch ('pwd',
        'id' = 'hong',
        'pwd'='1234',
        'age' = 100,
        'name' = 홍길동,
        print('default')
)

#다음과 같은 조건의 경우 어느 반복문이 맞을까요?
##1) 다이어트를 10kg 빠질 떄까지 운동장을 뛰어야지 ==> while (목표 달성할 때까지 몇번을 동작할 지 모름)
##2) 다이어트를 운동장 100바퀴 뛰어야지 ==> for 

## while 예제
cnt <- 1
## cnt가 7보다 작을 떄까지
#while(조건) {
# 반복될 코드 구문  
#}

while(cnt < 7) {
  print(cnt)
  cnt <- cnt + .5
}

#for 예제
#for(변수 in 반복대상) {
#   반복코드 블럭
#}
v <- 1:4
for(i in v) {
  print(i)
}

items <- c('봄','여름','가을','겨울')

items

for(item in items) {
  print(item)
  if(item == '여름') {
     print('시원한 해변')
  }
}





