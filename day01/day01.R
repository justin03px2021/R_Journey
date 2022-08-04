# day01_01_basic (주석문)
print('hello world')

# R 기본 사용법
# - 실행방법1. ctrl + enter: 다음의 실행할 수 있는 
                            라인으로 커서가 이동
print('ctrl + enter run')
# - 실행방법2. alt(option) + enter: 실행하고 제자리에 남기
print('alt/option + enter run')

# console 영역 초기화 하기: ctrl + L
# ctrl + 1로 코드창으로 복귀

# R 에서 출력을 하는 2가지 방법
print('1. use print function')
'2. use value itself to print'

# 데이터 
# - 현실 세계에서 관칙이 가능한 (raw data)것
# - 문자, 숫자(정수),숫자(실수),논리값(참,거짓)
# - NA: not available로 결측치 (값이 빠져있음)
# - NULL: 객체 없음. 존재하지 않음 

## 1. 문자
# - 문자는 작음 따옴표나 큰 따옴표로 묶인 데이터
'작은 따옴표'
'큰 따옴표'
'1' #문자
'1+1' #숫자로 보이지만 문자
1
2
3.14
a
2+3 #숫자는 당연히 연산이 가능합니다

### 3. 논리 
# - 0 혹은 1과 동일
TRUE
FALSE
T 
F

# 4. NA와 NULL
NA
NULL
# 기본 연산
## - 사칙연산
## '가' + '나' 불가능; 문자는 count연산만 가능

1+1
2-2
3*3
4/4

### 실습하기 7을 3으로 나누어주세요
7/3

### 몫 연산하기
7 %/% 3

### 나머지 연산하기
7%%3

# 연산은 숫자형태만 가능
1+1
'1'+'1'
3.14-1.1
TRUE+TRUE
