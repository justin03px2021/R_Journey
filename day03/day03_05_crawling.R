#day03_05_crawling
#https://en.wikipedia.org/wiki/World_Tourism_rankings

install.packages('rvest')
library(rvest)

#읽어올 페이지 지정
wiki <- 'https://en.wikipedia.org/wiki/World_Tourism_rankings'
#페이지(html파일)읽기
html <- read_html(wiki)

#원하는 부분 읽기
html_node(html, '#firstHeading')
html_text(html_node(html, '#firstHeading'))
