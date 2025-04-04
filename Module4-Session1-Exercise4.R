
complex_sum2 <- function (x) {
  if (anyNA(x))
    warning("Warning: input data contains missing values. Please correct.")
  x[is.na(x) | x < 0] <- 0
  sum(x)
}



  complex_sum <- function(x){
    result <- 0
    for(i in 1:length(x)){
      if(!is.na(x[i])){
        if(x[i] >= 0){
          result <- result + x[i]
        }
      }
    }
    return(result)
  }
  
complex_sum(c(1,2,3,NA,4))
complex_sum2(c(1,2,3,NA,4))
