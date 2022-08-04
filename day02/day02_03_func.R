#day02_03_func.R
#사용자 정의 함수 예제

my_func_isnum <- function(x) {
  print('커스텀 함수')
  print(x)
}

my_func_isnum()

#어떤 값을 받아서 해당 값이 숫자인 지 아닌지를 검사하는 함수
# 단 한글로 결과를 응답
## 숫자인지 아닌지 판단하는 함수

is.numeric(1)
is.numeric('1')
x <- 9
my_num <- function(x) {
  if(is.numeric(x)) {  
    print('x는 숫자입니다.')
} else {
    print('x는 숫자가 아닙니다.')
}
}
my_num('s')
