#day03_01_review
#실습하기. fruit 변수에 apple mango banana, orange, apple, pineapple
#문자형 데이터를 가진 벡터를 생성해주세요

fruit <- c('apple','mango','banana','orange','Apple','pineapple')

#실습하기 fruit에서 banana를 조회
fruit[3]

#fruit에서 apple 조회하기
fruit == 'apple'
fruit[fruit == 'apple']

#특정 조건 검색
#fruit에서 apple이라는 텍스트가 포함된 데이터를 조회하기
#grep(조건,데이터): 데이터에서 조건에 맞는 데이터를 검색
#대소문자 구분하여 검색됨

#대소문자 구문 없이 검색
grep('apple',fruit,ignore.case = T )

#실습하기. apple이 포함된 데이터를 조회해주세요
#단 index번호가 아닌 데이터 자체를 조회해주세요
#ex) apple, pineapple
fruit[grep('apple',fruit)]

#시작 값을 기준으로 조회하기
#-a로 시작하는 값 조회하기
grep('^a',fruit)
fruit[grep('^a',fruit)]

#-a로 시작하는 값 조회하기 (대소문자는 무시해주세요)
grep('^a',fruit, ignore.case = T)
fruit[grep('^a',fruit, ignore.case = T)]

#끝값을 기준으로 조회하기
#-e로 끝나는 값 조회하기
grep('e$',fruit)
fruit[grep('e$',fruit)]

#fruit 변수에 TRUE와 123 숫자 데이터를 추가하기
#논리값과 숫자값이 추가는 되지만 모두 문자형으로 변경됨
fruit <- c(fruit, TRUE, 123)
fruit

#grep을 이용하여 특수 키워드(정규식) 검사로
#숫자만 조회하기
grep('\\d',fruit)

#숫자가 아닌 것만 조회하기
grep('\\D',fruit)

#임의의 텍스트 수를 지정하여 검색하기
#fruit에서 7글자 이상인 데이터만 조회하기
grep('.......',fruit)


#grep대신 grepl함수로도 위의 작업이 가능합니다.
#grepl을 이용하여 응답결과가 논리값이 됩니다.
grepl('.......',fruit)

#with(데이터 프레임, 명령문)
#R의 명령문이 한 줄인 경우에만 사용이 가능
df <- data.frame(name=c('a','a','b','b'), nums=c(1:4))

#df에서 name 열을 조회해주세요
df$name
df[,'name']



#with를 이용하여 name열 조회하기
with(df,name)

#within(): within()은 with()와 비슷하지만 수정하는 기능을 제공함
#within(data,expr) : expr 평가할 표현식, 코드블럭

#결측치를 포함한 데이터 만들기
df
x<-c(1,NA,3,NA)
df <- data.frame(df,x)
df

#결측치를 0으로 채우기
#ifelse(조건,조건이 참일 때,조건이 거짓일 때)
within(df, {x<-ifelse(is.na(x),0,x)}) #(is.na(x)는 x가 여기서 열 이름)

#attach
#attach는 with와 작동은 비슷하지만 한줄이 아닌 
#멀티라인에 영향을 행사합니다
rm(name) #아래에서 name변수를 테스트를 하기 위해 초기화

#with로 df에서 name을 조회하기
with(df,name)
name #name 변수는 없으므로 에러

#attach를 이용한 조회 (name이 사용되는 부분을 주의 깊게 보세요)
attach(df) #df 데이터 프레임을 이용하겠다, detach를 만나기 전까지는 df가 계속 사용됨

nums
name
detach(df)








