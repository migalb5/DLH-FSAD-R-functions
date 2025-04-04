
safe_divide <- function (a, b) {

  result <- tryCatch({
    if (!is.numeric(a) || !is.numeric(b))
      stop()
  },
  error = function(e) {
    message("Invalid input type.")
    return(-1)
  })
  
  result <- tryCatch({
    if (b == 0)
      stop()
  },
  error = function(e) {
    message("Cannot divide by zero.")
    return(-2)
  })

  if (is.null(result))
    return(a / b)
}

safe_divide(4,3)
