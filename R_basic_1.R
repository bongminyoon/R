2+3
(3+6)*8
2^3

3+5+8
9-3
7*5
8/3
8%%3
2^3

log(10)+5
sqrt(25)
max(5,3,2)

log(10)
sqrt(36)
max(3,9,5)
min(3,9,5)
abs(-10)
factorial(5)
sin(pi/2)

10*5/2
10^2*pi

(5*60*60)+(48*60)+32
10000-(1000*5)-(500*3)
max(63,95,84,36,48)*500

install.packages('ggplot2')
library(ggplot2)
ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width))+geom_point()

install.packages('cowsay')
library(cowsay)

say('Hello world!', by='cat')
say('좋은 아침', by='snowman')
say('안녕', by='cow')
say('반가워',by='squirrel')

sort
?sort
help(sort)

x <- swiss$Education[1:25]
x; sort(x); sort(x, partial = c(10, 15))

a <- 10
10 <- a

total <- 5050
total
print(total)
cat('합계 :', total)

a <- 10
b <- 20
c <- a+b
print(a)
print(b)
print(c)

num <- 2, 5

abc <- 850
mid.sim <- 850
a <- sqrt(120)
a
sqrt <- 340
sqrt
age.1 <- 20
age.2 <- 25
print(age.1 + age.2)
name.1 <- 'john'
print(name.1)
grade.1 <- '3'
print(age.1 + grade.1)

5 > 3
2 > 7
TRUE + TRUE
a <- TRUE
b <- F

a
b
a + b

addr <- NULL
print(addr)

a <- NA
b <- 'NA'
a
b

1/0
-2/0
sqrt(-5)


10*5*(1/2)
10*10*3.14
5*60*60 + 48*60 + 32
10000 - (1000*5 + 500*3)
max(63, 95, 84, 36, 48)*500
#ggplot2 패키지 설치
#install.packages('ggplot2')
library(ggplot2)
ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width)) + geom_point()
install.packages('cowsay')
library(cowsay)
say('★이인환  정신차려☆', by ='yoda')
\print
?sort
help(sort)
ceiling(2.4)
Sys.time()
#소윤 931 7/29 
#주연 754 5/29 
#민철 1029 8/4  
#석준 1139 9/14  
#현석 1442 12/17
r=931
r=754
r=1029
r=1139
r=1442
(r-225) %% 100  #날
((r-225)- ((r- 225) %% 100)) / 100  #달
a <- 10
#a << 10
a <<- 10
a = 10
a -> 10
10 -> a
total <- 5050
total
print(total)
cat('합계 :', total)
a <- 10
b <- 20
c <- a + b
print(a)
print(b)
print(c)
a <- 10
print(a)
a <- 50
print(a)#
#num <- 2, 5
avg <- 10
.total <- 10
value.1 <- 10
sub total <- 456
d10 <- 789
var A <- 95
Var a <- 89
first ds <- 45
abc <- 850
mid.sum <- 850
a <- sqrt(120)
a
sqrt <- 340
sqrt
print(a)
age.1 <- 20
age.2 <- 25
print(age.1 + age.2)
name.1 <- 'john'
print(name.1)
grade.1 <- '3'
print(age.1 + grade.1)
5 > 3
2 > 7
TRUE + TRUE
a <- TRUE
b <- F

a
b
a+b

addr <- NULL
print(addr)
a <- NA 
b <- 'NA'
a
b
1/0
-2/0
sqrt(-5)



w <- 110
res = s/(s + w) * 100
print(res)
options(digits=4)
cat("salt =", s, "watar =", w, "농도 =", res, "%" )

score.1 <- 68; score.2 <- 95; score.3 <- 83; score.4 <- 76;
score.5 <- 90; 
score.6 <- 80; score.7 <- 85; score.8 <- 91; score.9 <- 82;
score.10 <- 70;
total <- score.1 + score.2 + score.3 + score.4 + score.5 + score.6 + score.7 + score.8 + score.9 + score.10
avg <- total / 10
avg

score <- c(68, 95, 83, 76, 90, 80, 85, 91, 82, 70)
mean(score)

x <- c(1,2,3)
y <- c('a','b','c')
z <- c(TRUE,TRUE, FALSE, TRUE)
x
y
z
w <- c(1,2,3, 'a', 'b', 'c')
w

v1 <- 50:90
v1
v2 <- c(1,2,5, 50:90)
v2
v3 <- seq(1,101,3)
v3
v4 <- seq(0.1,1.0,0.1)
v4
v5 <- rep(1,time=5)
v5
v6 <- rep(1:5,times=3)
v6
v7 <- rep(c(1,5,9), times=3)
v7
abse
v1 <- 50:90
v1
v2 <- c(1,2,5, 50:90)
v2
v3 <- seq(1,101,3)
v3
v4 <- seq(0.1,1.0,0.1)
v4
v5 <- rep(1,time=5)
v5
v6 <- rep(1:5,times=3)
v6
v7 <- rep(c(1,5,9), times=3)
v7
v8 <- rep(c('a','b','c'), each = 3)
v8
absent <- c(8,2,0,4,1)
absent
names(absent)
names(absent) <- c('Mon','Tue','Wed','Thu','Fri')
absent
names(absent)

d  <- c(1,4,3,7,8)
d
d[1]
d[2]
d[3]
d[4]
d[5]
d[6]









d <- c(1,4,3,7,8)
d[c(1,3,5)]
d[1:3]
d[seq(1,5,2)]
d[-2]
d[-c(3:5)]







sales  <- c(640,720,680,540)
names(sales)  <-  c('M1','M2','M3','M4')
sales
sales[1]
sales['M2']
sales[c('M1','M4')]

v1  <-  c(1,5,7,8,9)
v1
v1[8]  <- 3
v1 v1[c(1,5)]  <-  c(10,20)
v1
v1 <- c(100,200,300)
v1


