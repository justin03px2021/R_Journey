#day02_01_review

# combine : 인수를 결합하는 함수
# : 모든 값이 같은 자료형으로 변경됨
c(1)
c(1,2,3)
c(1,2,'3') #모든 값이 문자로 변경됨

# 상위 6개 데이터 확인하기
head(1:100)

#하위 6개 데이터 확인하기
tail(1:100)

#예제 (설명)을 찾아주는 함수
example('head')
example('seq')

#랜덤수를 만들어주는 함수
# sample(범위,갯수)
sample(45,6)

a <- sample(45,6)
sort(a)
sort(sample(45,6))
1:10
length(1:10)

