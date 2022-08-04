#day02_09_list.R
#list: 몽땅. 모든 데이터 구조를 담을 수 있는 구조
#차원으로 구분되어있고, 각차원은 완벽히 격리된 상태 (차원 간에 영향아 없습니다.)

a <- 1:6
b <- matrix(a, ncol = 2)
a
b
df

#리스트 만들기
list01<-list(a,b,df)
list01

#list01의 2차원 조회하기
list01[2]
#list[2][2,2] 동작 안 함
list01[[2]]
list01[[2]][2,2]

#리스트 만들기
# 차원의 이름 지정하기

list02 <- list(dim1 = a, b=b, df=df)
list02

#list02의 2차원의 2행 2열을 조회하기
list02[[2]][2,2]
list02$b[2,2]







