#' Probability Density Function (PDF) for the TLCAR Distribution
#'
#' Calculate the probability density at a given value using the TLCAR distribution.
#'
#' @param x Value at which to calculate the PDF.
#' @param alpha Parameter representing the distribution of the Topp-Leone component.
#' @param a Parameter representing the scale (a) of the Cauchy component.
#' @param b Parameter representing the position (b) of the Cauchy component.
#' @param theta Parameter representing the scale of the Rayleigh component.
#' @param m Additional parameter.
#'
#' @return Probability density at the given value.
#'
#' @details
#' The probability density function (PDF) for the TLCAR distribution is defined as follows:
#' \deqn{f(x)=\frac{2\alpha}{\pi a}\left[\frac{1+\left(\frac{x^2}{\theta^2}-1\right)e^{-\frac{x^2}{2\theta^2}}+m}{1+\left(\frac{x\left(1-e^{-\frac{x^2}{2\theta^2}}+m\right) -b}{a}\right)^2}\right]\left[\frac{1}{2}-\frac{1}{\pi}\arctan\frac{x\left(1-e^{-\frac{x^2}{2\theta^2}}+m\right) -b}{a}\right]\left[ 1-\left(\frac{1}{2}-\frac{1}{\pi}\arctan\frac{x\left(1-e^{-\frac{x^2}{2\theta^2}}+m\right)-b}{a}\right)^2\right]^{\alpha-1}}
#'
#' @examples
#' dTLCAR(x = 1, alpha = 1, a = 1, b = 0, theta = 2, m = 0.5)
#'
#' @export
dTLCAR <- function(x, alpha, a, b, theta, m) {
  term1 <- (2 * alpha) / (pi * a)
  term2 <- (1 + (((x^2 / theta^2) - 1) * exp(-x^2 / (2 * theta^2)) + m)) / (1 + temp_var(x, theta, a, b, m)^2)
  term3 <- 0.5 - (1 / pi) * atan(temp_var(x, theta, a, b, m))
  term4 <- (1 - (0.5 - (1 / pi) * atan(temp_var(x, theta, a, b, m)))^2)^(alpha - 1)

  result <- term1 * term2 * term3 * term4
  return(result)
}
