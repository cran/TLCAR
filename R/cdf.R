#' Cumulative Distribution Function (CDF) for the TLCAR Distribution
#'
#' Calculate the cumulative distribution at a given value using the TLCAR distribution.
#'
#' @param x Value at which to calculate the CDF.
#' @param alpha Parameter representing the distribution of the Topp-Leone component.
#' @param a Parameter representing the scale (a) of the Cauchy component.
#' @param b Parameter representing the position (b) of the Cauchy component.
#' @param theta Parameter representing the scale of the Rayleigh component.
#' @param m Additional parameter.
#'
#' @return Cumulative distribution at the given value.
#'
#' @details
#' The cumulative distribution function (CDF) for the TLCAR distribution is defined as follows:
#'
#' \deqn{F(x)=\left[ 1-\left(\frac{1}{2}-\frac{1}{\pi}\arctan\frac{x\left(1-e^{-\frac{x^2}{2\theta^2}}+m\right) -b}{a}\right)^2\right]^\alpha}
#'
#' @examples
#' cTLCAR(x = 1, alpha = 1, a = 1, b = 0, theta = 2, m = 0.5)
#'
#' @export
cTLCAR <- function(x, alpha, a, b, theta, m) {
  # Calculation of the CDF
  result <- (1 - (0.5 - (1 / pi) * atan(temp_var(x, theta, a, b, m)))^2)^(alpha)
  return(result)
}
