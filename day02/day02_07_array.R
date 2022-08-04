#day02_07_array.R
#array: 2개 이상의 층을 가지는 자료구조
#가로, 세로, 높이의 형태로 구성
#matrix가 계란 1판이라면
#array는 계란판을 층으로 쌓아둔 형태

#array(데이터, 구조)

array(c(1:27))
arr <- array(c(1:27),dim=c(3,3,3))
arr

#실습하기 arr의 2층의 모든 데이터를 조회해주세요

arr[,,2]

#실습하기 arr의 3층의 2행 2열을 조회해주세요

arr[,,3][2,2]
arr[2,2,3]

#실습하기 arr의 3층의 2행 2열의 데이터를 korea로 변경해주세요.

arr[2,2,3] <- 'korea'

arr


