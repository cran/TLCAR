#' Estimate parameters for the TLCAR distribution using maximum likelihood.
#'
#' This function estimates the parameters of the TLCAR distribution while
#' respecting the constraints on the parameters.
#'
#' @param data Numeric vector of data values.
#' @return Numeric vector of estimated parameters.
#' @importFrom stats nlminb
#' @importFrom utils Inf
#'
#' @examples
#' data(ConductorFailureTimes)
#' estimated_params <- fTLCAR(ConductorFailureTimes)
#'
#' @export
fTLCAR <- function(data) {
  log_likelihood <- function(parameters) {
    alpha <- parameters[1]
    a <- parameters[2]
    b <- parameters[3]
    theta <- parameters[4]
    m <- parameters[5]

    # Calculate the log-likelihood value for the data
    log_lik <- sum(log(dTLCAR(data, alpha, a, b, theta, m)))

    return(-log_lik)
  }

  # Constraints
  constraint <- function(parameters) {
    alpha <- parameters[1]
    a <- parameters[2]
    b <- parameters[3]
    theta <- parameters[4]
    m <- parameters[5]

    # Check parameter constraints
    if (alpha <= 0 || a <= 0 || theta <= 0 || m <= 0) {
      stop("Invalid parameter values")  # Throw an error for infeasible parameter values
    }

    return(NULL)
  }

  # Estimate parameters using constrained optimization
  start_params <- c(1, 1.5, 1, 1, 1)

  # Suppress warnings during parameter estimation
  result <- suppressWarnings(nlminb(start_params,
                                    log_likelihood,
                                    lower = c(0, 0, -Inf, 0, 1),
                                    control = list(trace = FALSE)))

  # Extract the estimated parameters
  estimated_params <- result$par

  return(estimated_params)
}
