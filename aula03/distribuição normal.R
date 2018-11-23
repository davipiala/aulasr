library(plotly)

x <- rnorm(100, mean = 0, sd=1)
e <- rnorm(100, mean = 0, sd=2)
y <- 0.5 + 2 * x + e


plot_ly( x = x, y = y, type = "scatter" )

class(demoData)
