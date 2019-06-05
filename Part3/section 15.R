myAbs <- function(x){
  if ( x > 0 ){
    return(x)
} else {
  return(-x)
  }
}
myAbs(-3.2)  
myAbs(4)

myF1 <- function(x){
  if (x>0) {
    return(x*x)
  } else {
    return(0)
  }
}

myF1(4.6)

myF2 <- function(x){
  if (x>0){
    return(2*x)
} else if (x ==0){
    return(0)
}else {
    return(-2*x)
  }
}

myF2(-2.4)


no <- scan()
ifelse(no%%2==0,'짝수','홀수')
###############################################################################################################################
myF1 <- function(x){
  if (x>5) {
    return(1)
  } else if(5<=5) {
    return(1)
  }
}
myF1(10)

myF2 <- function(x){
  if (x>0) {
    return(1)
  } else if(x<0) {
    return(0)
  }
}
myF2(-3)

myf3 <- function(x,y){
  if(x>y){
    return(x-y)
  } else if (x<y){
    return (y-x)
  }
}
myf3(10,8)
myf3(8,10)

myF4 <- function(x){
  if (x<0){
    return(0)
  } else if (x>=1 && x<=5){
    return(1)
  }else if (x>5){
    return(10)
  }
}
myF4(3)

myf5 <- function(input) {
  if (input=='Y' || input=='y'){
    return('Yes')
  } else {
    return ('Not Yes')
  }
}
myf5(c)

