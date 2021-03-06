% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reliability_analysis.R
\name{reliability_analysis}
\alias{reliability_analysis}
\title{Reliability Analysis}
\usage{
reliability_analysis(
  data,
  trial1,
  trial2,
  SESOI_lower = SESOI_lower_reliability_func,
  SESOI_upper = SESOI_upper_reliability_func,
  estimator_function = reliability_estimators,
  control = model_control(),
  na.rm = FALSE
)
}
\arguments{
\item{data}{Data frame}

\item{trial1}{Character vector indicating column name in the \code{data}}

\item{trial2}{Character vector indicating column name(s) in the \code{data}}

\item{SESOI_lower}{Function or numeric scalar. Default is \code{\link{SESOI_lower_reliability_func}}}

\item{SESOI_upper}{Function or numeric scalar. Default is \code{\link{SESOI_upper_reliability_func}}}

\item{estimator_function}{Function for providing reliability estimators. Default is \code{\link{reliability_estimators}}}

\item{control}{Control object returned from \code{\link{model_control}} function.
Use \code{boot_type}, \code{boot_samples}, \code{boot_strata}, and \code{confidence} to setup bootstrap.}

\item{na.rm}{Should NAs be removed? Default is \code{FALSE}}
}
\value{
Object of class \code{bmbstats}
}
\description{
\code{reliability_analysis} represents a wrapper function for the \code{\link{bmbstats}} function.
\code{reliability_analysis} runs the bootstrap reliability analysis of the \code{data} data frame using
\code{estimator_function} to return the estimators
}
\examples{
data("agreement_data")

rel_analysis <- reliability_analysis(
  data = agreement_data,
  trial1 = "Practical_score.trial1",
  trial2 = "Practical_score.trial2",
  control = model_control(
    boot_type = "perc",
    boot_samples = 1000,
    seed = 1667
  )
)

rel_analysis

plot(rel_analysis)
}
