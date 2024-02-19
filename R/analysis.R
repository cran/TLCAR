#'  Estimate parameters with constraints and plot histogram with estimated density
#'
#' This function estimates the parameters of the TLCAR distribution while
#' respecting the constraints on the parameters. It plots the histogram of the data
#' along with the estimated density curve.
#'
#' @param data Numeric vector of data values.
#' @return Numeric vector of estimated parameters.
#' @importFrom stats nlminb
#' @importFrom utils Inf
#'
#' @examples
#' data(ConductorFailureTimes)
#' sTLCAR(ConductorFailureTimes)
#'
#' @export
  sTLCAR <- function(data) {

  hist(data, main = "Data histogram with estimated density", xlab = "x", ylab = "Density", freq = FALSE, breaks = 15,col = "#87CEEB")

  #' Estimate parameters using constrained optimization
  estimated_params <- fTLCAR(data)

  #' Calculate the x values for the density curve
  x <- seq(2, max(data)+4, length.out = 1000)

  #' Plot the estimated density curve using curve()
  curve(dTLCAR(x, estimated_params[1], estimated_params[2], estimated_params[3], estimated_params[4],estimated_params[5]),
        from = min(data), to = max(data)+4, col = "red", lwd = 2, add = TRUE, n = 1000)
}
