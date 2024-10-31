head(pressure)
plot(pressure$temperature,
     pressure$pressure,
     main='온도와 기압',
     xlab='온도(화씨)',
     ylab='기압'
)

head(cars)

plot(cars$speed,
     cars$dist,
     main='자동차 속도와 제동거리',
     xlab='속도',
     ylab='제동거리',
     )
cor(cars$speed, cars$dist)

st <- data.frame(state.x77)
head(st)

plot(st)

cor(st)


str(longley)
head(longley)
df <- longley[,c('GNP','Unemployed', 'Armed.Forces', 'Population', 'Employed')]
df


plot(df)
cor(df)

install.packages('Ecdat')
library(Ecdat)
str(Hdma)

tbl <- table(Hdma$deny)
tbl <- tbl / sum(tbl)
tbl
names(tbl) <- c('승인', '거절')
barplot(tbl, main='주택담보대출 승인/거절',
        col=c('green', 'yellow'),
        ylim=c(0,1),
        ylab='비율')

hist(Hdma$lvr, main='주택가격대비 대출금 비율', col=rainbow(10))

black.yn <- table(Hdma$black)
black.deney <- sum(Hdma$black=='yes' & Hdma$deny=='yes') /
black.yn['yes']

non.black.deney <- sum(Hdma$black=='no' & Hdma$deny=='yes') /
black.yn['no']
cat('흑인, 비흑인 거절률 : ', black.deney, non.black.deney, '\n')

black.credit <- mean(Hdma$ccs[Hdma$black=='yes'])
non.black.credit <- mean(Hdma$ccs[Hdma$black=='no'])
cat('흑인, 비흑인 신용등급 : ', black.credit, non.black.credit, '\n')

df <- Hdma[,c('dir', 'hir', 'ccs', 'mcs')]
point.col <- c('green', 'red')
plot(df, col= point.col[Hdma$deny])

cor(df)

z <- c(1,2,3,NA,5,NA,8)
sum(z)
is.na(z)
sum(is.na(z))
sum(z, na.rm=TRUE)


z1 <- c(1,2,3,NA,5,NA,8)
z2 <- c(5,8,1,NA,3,NA,7)
z1[is.na(z1)] <- 0
z1
z3 <- as.vector(na.omit(z2))
z3


x <- iris
x[1,2]<-NA; x[1,3]<-NA
x[2,3]<-NA; x[3,4]<-NA
head(x)

ncol(x)

for (i in 1:ncol(x)){
  this.na <- is.na(x[,i])
  cat(colnames(x)[i], '\t', sum(this.na), '\n')
}

col_na <- function(y){
  return(sum(is.na(y)))
}
na_count <- apply(x, 2, FUN=col_na)
na_count

rowSums(is.na(x))
sum(rowSums(is.na(x))>0)
sum(is.na(x))

head(x)
x[!complete.cases(x),]
y <- x[complete.cases(x),]
head(y)

library(carData)
str(UN)

col_na <- function(y){
  return(sum(is.na(y)))
}
apply(UN, 2, FUN=col_na)

mean(UN$lifeExpF, na.rm=T)
tmp <- UN[,c('pctUrban', 'infantMortality')]
tmp<-tmp[complete.cases(tmp),]
colMeans(tmp)

tmp <- subset(UN, region=='Asia')
mean(tmp$fertility, na.rm=T)

v1 <- c(1,7,6,8,4,2,3)
v1<-sort(v1)
v1
v2 <- sort(v1, decreasing = T)
v2

name <- c('정대일','강재구','신현식','홍길동')
sort(name)
sort(name, decreasing = T)

name <- c('정대일', '강재구', '신현식', '홍길동')
order(name)
order(name, decreasing = T)

idx <- order(name)
name[idx]

head(iris)
order(iris$Sepal.Length)
iris[order(iris$Sepal.Length),]
iris[order(iris$Sepal.Length, decreasing=T),]
iris.new <- iris[order(iris$Sepal.Length),]
head(iris.new)

iris[order(iris$Species, decreasing=T, iris$Petal.Length),]

library(carData)
str(Highway1)

Highway1[order(Highway1$rate, decreasing = T),]

tmp <- Highway1[order(Highway1$len, decreasing = T), 'len']
tmp
sum(tmp[1:10])

tmp <- Highway1[order(Highway1$adt),c('adt','rate')]
tmp
tmp[1:10,]

tmp <- Highway1[order(Highway1$slim, decreasing = T), c('len', 'adt', 'rate')]
tmp
tmp[1:5,]
x <- 1:100
y <- sample(x, size =10, replace=TRUE)
y


idx <- sample(1:nrow(iris), size=50, replace=F)
iris.50 <- iris[idx,]
dim(iris.50)
head(iris.50)


sample(1:20, size=5)
sample(1:20, size=5)
sample(1:20, size=5)
set.seed(10)
sample(1:20, size=5)
set.seed(100)
sample(1:20, size=5)
sample(1:20, size=5)

combn(1:5,3)
x <- c("red", "green", "blue", 'black', "white")
com <- combn(x,2)
com

for(i in 1:ncol(com)){
  cat(com[,i], "\n")
}

   

library(carData)
str(KosteckiDillon)  

tot.mean <- mean (KosteckiDillon$dos)
tot.mean

for(rate in (1:5)*0.1){
  set.seed(100)
  idx <- sample(nrow(KosteckiDillon), nrow(KosteckiDillon)* rate)
  sam.data <- KosteckiDillon[idx,'dos']
  tmp.mean <- mean(sam.data)
  cat('Diff:', rate, tot.mean-tmp.mean,'\n')
}

# agg <- aggregate(iris[,-5], by=list(품종=iris$Species),
                 FUN=sd)
agg
head(mtcars)
agg <- aggregate(mtcars, by=list(cyl=mtcars$cyl,
                 vs=mtcars$vs),FUN=max)
agg

