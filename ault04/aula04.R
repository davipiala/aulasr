acc = 0
month = 0
df = data.frame()
cAcc = c(0)

for ( add in AirPassengers) {
  acc <- acc + add
  month <- month + 1
  df = rbind( df, c(month, add, acc))
  cAcc <- c(cAcc, tail( cAcc, 1) + add)
}


df2 <- cbind(seq_along(AirPassengers), AirPassengers, cAcc)
colnames(df) <- c('mes', 'add', 'acc')
colnames(df2) <- c('mes', 'add', 'acc')

acc == sum(AirPassengers)
df


## functions

facLoop <- function(num) {
  acc <- num;
  while( num >= 1) {
    num <- num - 1;
    acc <- acc * num;
  }
  acc;
}


fatorial <- function(num) {
  if( num <= 1 ) return(1);
  num * fatorial( num - 1 );
}

inv <- function(vec) {
  vec[length(vec):1]
}


## Closure

counter <- function() {
  x <- 0
  function(a = 1) {
    x <- x + a
    x
  }
}


## AccVec
accVec <- function(vec) {
  acc = 0
  rVec = NULL
  
  for ( add in vec) {
    acc <- acc + add
    rVec <- c(rVec, acc)
  }
  rVec
}