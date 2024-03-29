% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analysis.R
\name{sTLCAR}
\alias{sTLCAR}
\title{Estimate parameters with constraints and plot histogram with estimated density}
\usage{
sTLCAR(data)
}
\arguments{
\item{data}{Numeric vector of data values.}
}
\value{
Numeric vector of estimated parameters.
}
\description{
This function estimates the parameters of the TLCAR distribution while
respecting the constraints on the parameters. It plots the histogram of the data
along with the estimated density curve.
}
\examples{
data(ConductorFailureTimes)
sTLCAR(ConductorFailureTimes)

}
