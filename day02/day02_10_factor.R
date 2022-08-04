#day02_10_factor.R
#펙터, 요인(factor): 자료구조를 이루고 있는 데이터
#펙터는 수준(level)이라고 알려진 사전에 정의한 값만 담을 수 있다. 
#펙터는 순위를 가질 수도 있고, 순위가 없을 수도 있습니다. 
#펙터는 문자처럼 보이지만 실제로는 숫자입니다. 

a <- c('low','medium','high')
a
b <- rep(a,3)
b

#펙터 만들기
dust <- factor(b)

levels(dust)

#levels에 순서를 지정하기
dust <- factor(b, levels = a)
dust

#levels에 순위를 부여하기
dust <- factor(b, levels = a, ordered = T)
min(dust)
max(dust)

#펙터는 사전에 정의값만 입력 및 수정이 가능합니다
dust[9]
dust[10] <- 'l'

dust[10] <- 'low'
dust

#factor를 vector로 변경하기
dust
as.vector(dust)
as.character(dust)

#숫자형 펙터를 벡터로 변경할 떄의 주의점
nums <- factor(c(20,30,40))
nums
#as.vector(nums)
#as.numeric(nums)
#바로 숫자형으로 변경하면 안되고
#문자로 변경로 변경한 이후에 다시 숫자로 변경해야함
as.numeric(as.vector(nums))





