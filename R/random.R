#' Generate a random sample from the TLCAR distribution
#'
#' Generate a random sample from the TLCAR distribution using the quantile function.
#'
#' @param n Number of observations in the sample.
#' @param alpha Parameter representing the distribution of the Topp-Leone component.
#' @param a Parameter representing the scale (a) of the Cauchy component.
#' @param b Parameter representing the position (b) of the Cauchy component.
#' @param theta Parameter representing the scale of the Rayleigh component.
#' @param m Additional parameter.
#'
#' @return Random sample from the TLCAR distribution.
#'
#' @examples
#' # Generate a random sample with 100 observations using estimated parameters
#' sample <- rTLCAR(n = 100, alpha = 1, a = 1, b = 0, theta = 3, m = 1)
#'
#' @export
rTLCAR <- function(n, alpha, a, b, theta, m) {
  # Function to calculate the quantile value
  quantile_value <- function(p) {
    qTLCAR(p, alpha, a, b, theta, m)
  }

  # Generate random uniform values between 0 and 1
  u <- runif(n)

  # Calculate quantile values for the random uniform values
  sample <- sapply(u, quantile_value)


  return(sample)
}
