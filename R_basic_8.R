
install.packages('carData')
library(carData)

room.class <- TitanicSurvival$passengerClass
room.class

tb1 <- table(room.class)
tb1
sum(tb1)

barplot(tb1, main='선실별 탑승객', 
        xlab='선실 등급',
        ylab='탑승객수',
        col=c('blue', 'green', 'yellow'))

tb1/sum(tb1)
par(mar=c(1,1,4,1))
pie(tb1, main = '선실별 탑승객',
    col = c('blue', 'green', 'yellow'))
par(mar=c(5.1,4.1,4.1,2.1))

grad <- state.x77[, 'HS Grad']
grad

summary(grad)
var(grad)
sd(grad)

hist(grad, main = '주별 졸업률',
     xlab = '졸업률',
     ylab = '주의 개수',
     col = 'orange')

boxplot(grad, main = '주별 졸업률',
     col = 'orange')

idx <- which(grad==min(grad))
grad[idx]

idx <- which(grad==max(grad))
grad[idx]

idx <- which(grad<mean(grad))
grad[idx]

ds <- read.csv('D:/rworks/fdeaths.csv', row.names='year')
ds

my.col <- c('black', 'blue', 'red', 'green', 'purple', 'darkgray')
my.lty <- 1:6

plot(1:12,
     ds[1,],
     main='월별 사망자 추이',
     type='b',
     lty=my.lty[1],
     xlab='Month',
     ylab='사망자수',
     ylim=c(300,1200),
     col=my.col[1]
     )
for( i in 2:6) {
  lines(1:12, #xdata
        ds[i,],
        type='b',
        lty=my.lty[i],
        col=my.col[i]
        )
}
legend(x='topright',
       lty=my.lty,
       col=my.col,
       legend=1974:1979)

 