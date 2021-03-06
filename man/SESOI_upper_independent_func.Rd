% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compare_independent_groups.R
\name{SESOI_upper_independent_func}
\alias{SESOI_upper_independent_func}
\title{SESOI upper threshold for \code{\link{compare_independent_groups}}}
\usage{
SESOI_upper_independent_func(group_a, group_b, na.rm = FALSE)
}
\arguments{
\item{group_a}{Numeric vector. This group represents baseline/control, observed variable, Pre-test in the paired design, or "practical" measure}

\item{group_b}{Numeric vector. This group represents experimental, predicted variable, Post-test in the paired design, or "criterion" measure}

\item{na.rm}{Should NAs be removed? Default is \code{FALSE}}
}
\value{
Pooled SD of \code{group_a} and \code{group_b}
multiplied by 0.2 (Cohen's trivial)
}
\description{
SESOI upper threshold for \code{\link{compare_independent_groups}}
}
\examples{
SESOI_upper_independent_func(rnorm(20), rnorm(10))
}
