score <- 45

if (score > 90) {
  grade <- 'A'
} else if (score > 80) {
  grade <- 'B'
} else if (score > 70) {
  grade <- 'C'
} else if (score > 60) {
  grade <- 'D'
} else {
  grade <- 'F'
}

print(grade)

for (i in 1:20){
     if(i%%2==0){
    cat(i, ' ')
  }
}

nrow <- nrow(iris)
mylabel <- c()
for(i in 1:nrow){
  if (iris$Petal.Length[i] <= 1.6) {
    mylabel[i] <- 'L'
  } else if (iris$Petal.Length[i] >= 5.1) {
    mylabel[i] <- 'H'
  } else {
     mylabel[i] <- 'M'
   }
}
print(mylabel)
newds <- data.frame(iris$Petal.Length,mylabel)
head(newds)

sum <- 0
i <- 0
while(i<= 100) {
  sum <- sum + i
  i <- i+1
}
print(sum)

apply(iris [,1:4], 1, mean)
apply(iris [,1:4], 2, mean)

sub1 <- c(14, 16, 12, 20, 8, 6, 12, 18, 16, 10)
sub2 <- c(18, 14, 14, 16, 10, 12, 10, 20, 14, 14)
sub3 <- c(44, 38, 30, 48, 42, 50, 36, 52, 54, 32)
score <- data.frame(sub1, sub2, sub3)

total <- apply(score, 1, sum)
scoreset <- cbind(score, total)

result <- c( )

for(i in 1:nrow(scoreset)){
  if(scoreset[i,1] < 20*0.4 | scoreset[i,2] < 20*0.4 | scoreset[i,3] < 60*0.4){
    result[i] <- '불합격'
  }else if(scoreset[i,4] >= 60){
    result[i] <- '합격'
  }else{
    result[i] <- '불합격'
  }
  cat(i, '번째 응시생은', result[i],'입니다.\n')
}



mymax <- function(x,y) {
  num.max <- x
  if(y>x) {
    num.max <- y
  }
  return(num.max)
} 
mymax(10,15)
a <- mymax(21230,158820,12312345)
b <- mymax(3100,454580,888888888888)
print(a+b)

mydiv <- function(x=2,y=2){
  result <- x/y
  return(result)
}
mydiv(x=10,y=3)
mydiv(10,3)
mydiv(10)
mydiv()

myfunc <- function(x,y){
  val.sum <- x+y
  val.mul <- x*y
  return(list(val.sum, val.mul))
}

result <- myfunc(5,8)
s <- result$sum
m <- result$mul
cat('5+8 =', s, '\n')
cat('5*8 =', m, '\n')

result


score <- c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84)
which(score==69)
which(score>=85)
max(score)
which.max(score)
min(score)
which.min(score)
scoreset


score <- c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84)
idx <- which(score<=60)
score[idx] <- 0 
score

idx <-which(score>=80)
score.high <- score[idx]
score.high

score.high <- subset(score, score >= 80)
score.high


idx <- which(iris$Petal.Length>5)
idx
iris.big <- iris[idx, ]
iris.big
nrow(iris.big)

score <- c(60,40,95,80)
names(score) <- c('john', 'jane', 'tom', 'david')
score
idx <- which.max(score)
names(score)[idx]


install.packages('Stat2Data')
library(Stat2Data)
data("ChildSpeaks")
str(ChildSpeaks)

idx <- which(ChildSpeaks$Age < 9)
ChildSpeaks[idx, 'm1'] <- 5
idx <- which(ChildSpeaks$Age >= 9 & ChildSpeaks$Age < 15)
ChildSpeaks[idx, 'm1'] <- 4
idx <- which(ChildSpeaks$Age >= 15 & ChildSpeaks$Age < 21)
ChildSpeaks[idx, 'm1'] <- 3
idx <- which(ChildSpeaks$Age >= 21 & ChildSpeaks$Age < 27)
ChildSpeaks[idx, 'm1'] <- 2
idx <- which(ChildSpeaks$Age >= 27)
ChildSpeaks[idx, 'm1'] <- 1


idx <- which(ChildSpeaks$Gesell < 70)
ChildSpeaks$m2[idx] <- 1
idx <- which(ChildSpeaks$Gesell >= 70 & ChildSpeaks$Gesell < 90)
ChildSpeaks$m2[idx] <- 2
idx <- which(ChildSpeaks$Gesell >= 90 & ChildSpeaks$Gesell < 110)
ChildSpeaks$m2[idx] <- 3
idx <- which(ChildSpeaks$Gesell >= 110 & ChildSpeaks$Gesell < 130)
ChildSpeaks$m2[idx] <- 4
idx <- which(ChildSpeaks$Gesell >= 130)
ChildSpeaks$m2[idx] <- 5


ChildSpeaks$total <- ChildSpeaks$m1 + ChildSpeaks$m2

idx <- which(ChildSpeaks$total < 3)
ChildSpeaks$result[idx] <- '매우느림'
idx <- which(ChildSpeaks$total >= 3 & ChildSpeaks$total < 5)
ChildSpeaks$result[idx] <- '느림'
idx <- which(ChildSpeaks$total >= 5 & ChildSpeaks$total < 7)
ChildSpeaks$result[idx] <- '보통'
idx <- which(ChildSpeaks$total >= 7 & ChildSpeaks$total < 9)
ChildSpeaks$result[idx] <- '빠름'
idx <- which(ChildSpeaks$total >= 9)
ChildSpeaks$result[idx] <- '매우빠름'
ChildSpeaks

ChildSpeaks[which.min(ChildSpeaks$total),]
ChildSpeaks[which.max(ChildSpeaks$total),]
 

library(reshape2)
str(tips)
unique(tips$sex)

idx <- which(tips[,'sex'] == 'Female')
avg.female <- mean(tips[idx, 'tip'])

idx <- which(tips[,'sex'] == 'Male')
avg.male <- mean(tips[idx, 'tip'])

avg.female
avg.male

unique(tips$smoker)

idx <- which(tips$smoker == 'Yes')
avg.smoker <- mean(tips[idx, 'tip'])
idx <- which(tips$smoker == 'No')
avg.nonsmoker <- mean(tips[idx, 'tip'])

avg.smoker

avg.nonsmoker

meanbycol.tip <- function (colname){
  value <- unique(tips[, colname])
  result <- list()
  for(i in 1:length(value)){
    idx <- which(tips[,colname] == value[i])
    result[i] <- mean(tips[idx,'tip'])
  }
  names(result) <- value
  return(result)
}

source('myfunc.R')
meanbycol.tip('sex')

meanbycol.tip('smoker')

meanbycol.tip('size')
meanbycol.tip('sex')

source('myfunc.R')
tips.new <- categorize.tip(tips)
head(tips.new)

