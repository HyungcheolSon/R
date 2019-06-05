

#1
for (i in seq(2,9)) {   
  for (j in 1:9) {
    print (paste(i, "*", j, "=", i*j))
  }
}


#2
while (T){
  for ( i in 1:4){
    line <-''
    if(i )
  }
}

#3
getDenominator<-function(x){
  den <- c(1)
  if (x >= 2) {
    for (i in 2:x) {
      if ( x %% i == 0)
        den <- c(den, i)
    }
  }
  return(den)
}
getDenominator(7)
