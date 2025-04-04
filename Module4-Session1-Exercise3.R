
fahrenheit_to_celsius <- function (t) {
  return((t - 32) * 5/9)
}
  
kelvin_to_celsius <- function (t) {
  return(t - 273.15)
}

convert_temperature <- function (temp, unit = c("F", "C", "K"), rounding = TRUE) {
  
  switch (unit,
          "C" = converted_temp <- temp,
          "F" = converted_temp <- fahrenheit_to_celsius(temp),
          "K" = converted_temp <- kelvin_to_celsius(temp),
          stop("Error: unrecognized temperature unit. Please use 'F', 'K' or 'C'.")
  )
  
  if (rounding)
    return(round(converted_temp))
  else
    return(converted_temp)
}

convert_temperature(100.1,"C", FALSE)
