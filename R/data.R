#' Dataset: ConductorFailureTimes
#'
#' This dataset contains failure times (measured in hours) obtained from an accelerated life test involving 59 conductors.
#' The data are presented as a numeric vector.
#'
#' @name ConductorFailureTimes
#' @docType data
#' @format A numeric vector of failure times.
#' @description This dataset contains failure times measured in hours from an accelerated life test with 59 conductors.
#'
#' @references
#' Nasiri, B., et al. (2010). "Bayesian analysis of the accelerated life model with Type-II censoring."
#' Journal of Statistical Planning and Inference, 140(6), 1565-1572.
#'
#' Schafft, H. A., et al. (1987). "Reproducibility of the accelerated test for electric cable insulation."
#' IEEE Transactions on Electrical Insulation, 22(5), 739-746.
#' @usage data(ConductorFailureTimes)
#'
#' @keywords datasets
ConductorFailureTimes <- c(6.545, 9.289, 7.543, 6.956, 6.492, 5.459, 8.120, 4.706, 8.687, 2.997,
             8.591, 6.129, 11.038, 5.381, 6.958, 4.288, 6.522, 4.137, 7.459, 7.495,
             6.573, 6.538, 5.589, 6.087, 5.807, 6.725, 8.532, 9.663, 6.369, 7.024,
             8.336, 9.218, 7.945, 6.869, 6.352, 4.700, 6.948, 9.254, 5.009, 7.489,
             7.398, 6.033, 10.092, 7.496, 4.531, 7.974, 8.799, 7.683, 7.224, 7.365,
             6.923, 5.640, 5.434, 7.937, 6.515, 6.476, 6.071, 10.941, 5.923)

#Save the dataset as an RDA file.
#save(ConductorFailureTimes, file = "data/ConductorFailureTimes.rda")
