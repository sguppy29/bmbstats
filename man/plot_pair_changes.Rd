% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot-pair-changes.R
\name{plot_pair_changes}
\alias{plot_pair_changes}
\title{Plot pair changes}
\usage{
plot_pair_changes(
  group_a,
  group_b,
  value_label = NULL,
  group_label = NULL,
  SESOI_lower = 0,
  SESOI_upper = 0,
  group_a_label = "Group A",
  group_b_label = "Group B",
  control = plot_control()
)
}
\arguments{
\item{group_a}{Numeric vector. This group represents baseline/control, observed variable, Pre-test in the paired design, or "practical" measure}

\item{group_b}{Numeric vector. This group represents experimental, predicted variable, Post-test in the paired design, or "criterion" measure}

\item{value_label}{Character string. Label to be used for y-axis. Default is \code{NULL}}

\item{group_label}{Character string. Label to be used for x-axis. Default is \code{NULL}}

\item{SESOI_lower}{Lower smallest effect size of interest threshold}

\item{SESOI_upper}{Upper smallest effect size of interest threshold}

\item{group_a_label}{Character vector. The name of the \code{group_a}. Default is "Group A"}

\item{group_b_label}{Character vector. The name of the \code{group_b}. Default is "Group B"}

\item{control}{Plotting control object returned from \code{\link{plot_control}}}
}
\value{
Returns \code{link[ggplot2]{ggplot}} object
}
\description{
Plot pair changes
}
\examples{
plot_pair_changes(rnorm(100, 100, 20),
  rnorm(100, 110, 40),
  SESOI_lower = -10,
  SESOI_upper = 10
)
}
