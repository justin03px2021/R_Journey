#day03_04_crawl.R
#크롤링 예제

#xlsx -> 엑셀
#txt -> notepad(메모장)
#docx -> word(문서)
#html -> browser(chrome, FF, IE, Edge)
# : html은 인터넷 페이지를 구성하는 언어이자 파일명

#크롤링은
#이전까지는 데이터를 가져가라고 어디선가 제공했지만
#크롤링은 웹 사이트 상에서 화면을 구성하는 (html)곳에서
#컴퓨터 기법을 이용하여 데이터를 수집하는 것

#HTML은 크게 2가지 부분으로 구성됩니다
#-head: 꾸며주는 역할, 설정파일 부분 (눈에 안보임)
#-body: 눈에 보이는 부분

#HTML은 내 컴퓨터(로컬)에 자동으로 download되고
#내 컴퓨터에서 실행이 됩니다
#이 역할을 하는 프로그름을 우리는 브라우저라고 부릅니다
#- Ch, FF, IE, Edge

install.packages('rvest')
library(rvest)
#naver 메인화면 읽기
read_html('https://www.naver.com/')

#실습하기. 읽어온 naver html을 저장해주세요
read_html('https://www.naver.com/') %>%
  as.character() %>%
  writeLines('test.html')

#naver 메인 화면 읽기
naver <- read_html('https://www.naver.com/')

#반정형 데이터 HTML 파일에서 내가 원하는 데이터 찾기
#id는 #, class는 .
# id='korea'를 #korea로 표현
# class='academy'를 .academy

#원하는 정보 긁어오기
naver %>% 
  html_node('.login_msg') %>%
  html_text()

naver %>%
  html_node('.link_login') %>%
  html_text
