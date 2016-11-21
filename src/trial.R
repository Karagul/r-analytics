require(quantmod)
require(xts)
require(TTR)
require(PerformanceAnalytics)

getSymbols('MSFT', src='yahoo', from = '2016-01-01')
barChart(MSFT)
addMACD()
