library("TTR")

setwd('../data')

# Reading CSV
data <- read.csv("../data/bitstampUSD-1000.csv", header = FALSE)
nrow(data)
head(data)

colnames(data) <- c("time","price","volume")
sma20 <- SMA(data[c('price')],n=20)


dataSMA = data.frame(data,sma20)
head(dataSMA, n=50)

plot(dataSMA$time,dataSMA$price)
lines(dataSMA$price, col = ‘red’)
