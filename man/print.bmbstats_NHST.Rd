% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NHST-S3.R
\name{print.bmbstats_NHST}
\alias{print.bmbstats_NHST}
\title{S3 method for printing \code{\link{bootstrap_NHST}} results}
\usage{
\method{print}{bmbstats_NHST}(x, ...)
}
\arguments{
\item{x}{Object of class \code{bmbstats_NHST}}

\item{...}{Extra arguments. Not used}
}
\description{
S3 method for printing \code{\link{bootstrap_NHST}} results
}
\examples{
mean_NHST <- bootstrap_NHST(
  describe_data(rnorm(100)),
  "mean"
)
mean_NHST
plot(mean_NHST)
}
