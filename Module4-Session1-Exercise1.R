
describe_vector <- function (x, summary_fun = c("mean", "median", "sd")) {

    if (is.null(summary_fun))
      return(list(mean = mean(x), median = median(x), std_deviation = sd(x)))

    summary_fun <- match.arg(summary_fun)
    switch (summary_fun,
            "mean" = return(mean(x)),
            "median" = return(median(x)),
            "sd" = return(sd(x))
    )
    
    stop("Error: unrecognized second argument. Plase use 'mean', 'median' or 'sd' (with quotes)")
}

describe_vector(c(1,2,3,4,5), "mean")
