#' Quantile function for TLCAR distribution
#'
#' Calculate the quantile value for a given probability using the TLCAR distribution.
#'
#' @param p Probability value (between 0 and 1).
#' @param alpha Parameter representing the distribution of the Topp-Leone component.
#' @param a Parameter representing the scale (a) of the Cauchy component.
#' @param b Parameter representing the position (b) of the Cauchy component.
#' @param theta Parameter representing the scale of the Rayleigh component.
#' @param m Additional parameter.
#'
#' @return Numeric value representing the quantile.
#'
#' @examples
#'  qTLCAR(p = 0.5, alpha = 1, a = 1, b = 0, theta = 3, m = 1)
#'
#' @export
qTLCAR <- function(p, alpha, a, b, theta, m) {
  # Function to calculate the CDF value at different quantiles
  cdf_value <- function(x) {
    cTLCAR(x, alpha, a, b, theta, m)
  }

  # Define the search interval based on the probability value
  lower <- -100  # Lower bound for search
  upper <- 100   # Upper bound for search

  # Use optimize function to find the quantile value
  result <- optimize(function(x) abs(cdf_value(x) - p), interval = c(lower, upper))$minimum

  return(result)
}
