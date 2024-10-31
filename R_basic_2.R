score <- c(68, 95, 83, 76, 90, 80, 85, 91, 82, 70)
mean(score)

# 벡터
# R에서 제공하는 여러개의 값을 한꺼번에 저장하는 기능
# 1차원 배열

x <- c(1, 2, 3) #숫자형
y <- c('a', 'b', 'c') #문자형
z <- c(TRUE, TRUE, FALSE, TRUE) #논리형

x
y
z



w <- c(1, 2, 3, 'a', 'b', 'c')
w # 하나의 벡터에는 동일한 자료형의 값이 저장되어야 함



v1 <- 50:90
v1 # 콜론(:)을 이용하면 연속된 정수로 이루어진 벡터 지정

v2 <- c(1, 2, 5, 50:90)
v2 # c 함수 안에서도 콜론(:) 사용 가능



v3 <- seq(1, 101, 3)
v3 # seq 함수 : 시작, 종료, 간격

v4 <- seq(0.1, 1.0, 0.1)
v4



v5 <- rep(1, times=5)
v5

v6 <- rep(1:5, times=3)
v6


v7 <- rep(c(1, 5, 9), times = 3)
v7

# rep(반복대상값, times=반복횟수) 함수



v8 <- rep(c('a', 'b', 'c'), each = 3)
v8 # 매개변수 times 대신에 each 사용



# 벡터 값에 이름 붙이기
absent <- c(8, 2, 0, 4, 1)
absent
names(absent)
names(absent) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
absent
names(absent)

# ctrl + shift + c = 범위 지정 후 일괄 주석 처리 가능


# 인덱싱
d <- c(1, 4, 3, 7, 8) # 1, 3, 5번째 자료 출력
d[c(1, 3, 5)]         # 1, 2, 3번째 자료 출력
d[1:3]                # 홀수 번째 자료 출력
d[seq(1, 5, 2)]       
d[-2]                 # - 는 '제외하고'의 의미
d[-c(3:5)]            # 세번째에서 다섯번째 값은 제외


sales <- c(640, 720, 680, 540)
names(sales) <- c('M1', 'M2', 'M3', 'M4')
sales
sales[1]
sales['M2']
sales[c('M1', 'M4')]



# 벡터에 저장된 원소값 변경하기
v1 <- c(1, 5, 7, 8, 9)
v1
v1[2] <- 3
v1
v1[c(1, 5)] <- c(10, 20)
v1
v1 <- c(100, 200, 300)
v1



customer <- c('kim', 'lee', 'park', 'choi', 'seo')
deposit <- c(5000000, 4500000, 4000000, 5500000, 6000000)
rate <- c(3.5, 3, 4, 5, 4.5)
period <- c(2, 2, 5, 7, 4)

names(deposit) <- customer
names(rate) <- customer
names(period) <- customer

who <- c(customer)
sum <- deposit[who]*(1+rate[who]/100)^period[who]
sum

sum1 <- deposit['park']*(1+rate['park']/100)^period['park']
sum1


y <- sqrt(100)
y


d <- c(1, 7, 4, 2, 3)
sort(d)                  # 벡터 d의 값을 오름차순으로 정렬하여 출력
sort(d, decreasing=TRUE) # 벡터 d의 값을 내림차순으로 정렬하여 출력


sort(x=d, decreasing = FALSE) # 정식 문법
sort(d, FALSE)                # 매개변수 이름의 생략


sort(x=d, decreasing = FALSE) # 정식 문법
sort(x=d)                     # 선택적 매개변수의 생략
sort(d)                       # 매개변수명의 생략


# paste 함수
# 문자열을 연결할 때 쓰이는 함수
# sep = ' ' <- 따옴표 안의 것으로 문자를 연결

str <- paste('good', 'morning', sep=' / ')
str

a <- '나의 나이는'
b <- 20
c <- '입니다'
paste(a, b, c, sep=' ')
paste0(a, b, c, sep=' ')

a <- 1:12
b <- '월'
c <- paste(a, b, sep='')
c



sales <- c(750, 740, 760, 680, 700, 710, 850, 890, 700, 720, 690, 730)
names(sales) <- paste(1:12, '월', sep="")
sales

sales['7월']
sales['1월']+sales['2월']
max.month <- sort(sales, decreasing=T)
max.month[1]

mean(sales)
sum(sales[1:6])



