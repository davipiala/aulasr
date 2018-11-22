dia_texto <- "28/09/2017 T 18:51:30"
dia_date  <- as.Date(dia_texto,format="%d/%m/%Y T %H:%M:%S",tz="America/Sao_Paulo")
dia.time1 <- as.POSIXct(dia_texto,format="%d/%m/%Y T %H:%M:%S",tz="America/Sao_Paulo")
dia.time2 <- as.POSIXlt(dia_texto,format="%d/%m/%Y T %H:%M:%S",tz="America/Sao_Paulo")

dia_date
dia.time1
dia.time2

unclass(dia_date)
unclass(dia.time1)
unclass(dia.time2)



## lubridate
install.packages("lubridate")
library("lubridate")

?duration
dul <- duration(second=260)
dul / 60
dulOneDay = duration( "1d" )
dWeek = duration( "12d 5H 10M" )

myDate <- dmy("1-nov-2018")
d2018 <- weekdays(myDate)
myDate + days( 7 * 3 + 1)

d2019 <- dmy("1-nov-2019")
weekdays(d2019)



### Excercise: Algoritmo Para "Black Friday"
library("lubridate")

yearsToLookUp <- c(dmy("1-nov-2018"), dmy("1-nov-2019"), dmy("1-nov-2020"), dmy("1-nov-2021"))
daysToFirstFrydays = 5 - as.POSIXlt(yearsToLookUp)$wday
res <- yearsToLookUp + days(daysToFirstFrydays) + weeks(3)

res
weekdays( res )


# Resultados da pesquisa
# 2018-11-23
# 2019-11-29
# 2020-11-27
# 2021-11-26