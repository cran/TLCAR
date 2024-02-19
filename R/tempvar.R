#' Temporary Variable Calculation
#'
#' This function calculates a temporary variable used in the TLCAR distribution density function.
#'
#' @param x Numeric vector of values at which to calculate the temporary variable.
#' @param theta Parameter representing the scale of the Rayleigh component.
#' @param a Parameter representing the scale (a) of the Cauchy component.
#' @param b Parameter representing the position (b) of the Cauchy component.
#' @param m Additional parameter.
#'
#' @return Numeric vector of calculated temporary variable values
#'
#'
#' @export
temp_var <- function(x, theta, a, b, m) {
  val <- (x * (1 - exp(-x^2 / (2 * theta^2)) + m) - b) / a
  return(val)
}
