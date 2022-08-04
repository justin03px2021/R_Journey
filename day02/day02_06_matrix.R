#day02_06_matrix.R
#행령(matrix): 행과 열로 이루어진 자료구조
#쉽게 말해서 m x n의 형태
#벡터는 1차원 구조, 행렬은 2차원 구조
#주의사랑: 모든 데이터는 동일한 데이터

#matrix(데이터, nrow = 행개수, ncol = 열개수)

n <- c(1,2,4,8,16,32)
matrix(n)
matrix(n, nrow = 2)
matrix(n, nrow = 2, byrow=T)
matrix(n,ncol=2)
matrix(n,nrow=3)
f <- matrix(n, ncol=2)
#실습하기. f에서 2행, 2열의 값을 조회해주세요
#ex) 16
f[2,2]

#실습하기. f에서 1,3행의 2열을 조회해주세요
c(f[1,2], f[3,2])
f[c(1,3),2]

#실습하기. f에서 1, 3 행의 2열을 조회하고 2번째 방을 조회하세요
#ex) 32
#벡터[방번호]
f
f[c(1,3),2][2]

#행렬의 이름 부여하기
#names(f)
colnames(f) <- c('col1','col2')
rownames(f) <- c('row1','row2','row3')
f
rownames(f)
colnames(f)
dimnames(f)
names(f)

#실습하기.f의 row1, row3의 col1, col2를 조회해주세요
f[c('row1','row3'), c('col1','col2')]
f[c('row1','row3'), ]
f[c(1,3),c(1,2)]  
  
#실습하기 f의 2행 2열의 데이터를 'korea'로 변경하기
f[2,2] <- 'korea'
f

#벡터의 연산

f <- matrix(n, ncol=2)
f+5



  
  

  