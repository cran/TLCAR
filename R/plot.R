#' Graphical Plot of the TLCAR Distribution
#'
#' Generate a graphical plot of the probability density function (PDF) or cumulative distribution function (CDF) for the TLCAR distribution.
#'
#' @param x The range of values to plot the distribution.
#' @param alpha Parameter representing the distribution of the Topp-Leone component.
#' @param a Parameter representing the scale (a) of the Cauchy component.
#' @param b Parameter representing the position (b) of the Cauchy component.
#' @param theta Parameter representing the scale of the Rayleigh component.
#' @param m Additional parameter.
#' @param type The type of plot to generate: "pdf" for PDF plot, "cdf" for CDF plot.
#'
#' @return A graphical plot of the TLCAR distribution.
#'
#' @examples
#' ploTLCAR(x = seq(0, 10, by = 0.1), alpha = 0.5, a = 1, b = 0, theta = 2, m = 1, type = "pdf")
#'
#' @importFrom stats lines
#'
#' @export
ploTLCAR <- function(x, alpha, a, b, theta, m, type = "pdf") {
  if (type == "pdf") {
    y <- dTLCAR(x, alpha, a, b, theta, m)
    plot_title <- "Probability Density Function (PDF) of TLCAR Distribution"
    y_label <- "PDF"
  } else if (type == "cdf") {
    y <- cTLCAR(x, alpha, a, b, theta, m)
    plot_title <- "Cumulative Distribution Function (CDF) of TLCAR Distribution"
    y_label <- "CDF"
  } else {
    stop("Invalid plot type. Choose 'pdf' or 'cdf'.")
  }

  plot(x, y, type = "l", col = "blue", lwd = 2, main = plot_title, xlab = "x", ylab = y_label)
}
