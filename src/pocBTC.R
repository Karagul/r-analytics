# Use BTC market data to generate a chart with Quantmod.
# Data should be formatted for technical analysis with Quantmod.
# Inspired by; http://www.quantmod.com/examples/intro/
# Technical analysis charts; http://www.quantmod.com/examples/charting/#technicals
#
# Next step Backtesting (https://timtrice.github.io/backtesting-strategies/)

library('curl')
library('TTR')
library('xts')
library('quantmod')

# Class time converts epoc time to date object
setClass('time')
setAs('character','time', function(from)
    as.POSIXct(as.numeric(as.character(from)), origin="1970-01-01",tz="GMT")
)

# Downloading data
date <- as.numeric(as.POSIXct("2016-01-01", format="%Y-%m-%d"))
symbol <- paste('symbol', 'bitstampUSD', sep="=")
start <- paste('start', date, sep="=")
query <- paste(symbol, start, sep="&")
url <- paste('http://api.bitcoincharts.com/v1/trades.csv', query, sep="?")
curl_download(url, './data/bitstampUSD.csv')

# Reading CSV, set column names and output some results
data <- read.csv('./data/bitstampUSD.csv',
    colClasses=c(
      'numeric',
      'numeric',
      'numeric'
    ),
    header = FALSE
)

# Convert data to time-series
print(c('Rows loaded:', nrow(data)), quote=FALSE)
colnames(data) <- c('time','price','volume')
data$time <- as.POSIXct(data$time, origin="1970-01-01", tz="GMT")
head(data)
series=xts(data[,-1],order.by=data$time)
print(c('Days:', ndays(series)), quote=FALSE)
head(series)

# Create hourly OHLC data set
series_hours <- to.period(series, "hours")
head(series_hours)
seriesHi(series_hours)
seriesLo(series_hours)
is.OHLC(series_hours)

# Chart the data series
barChart(series_hours)
addMACD()
