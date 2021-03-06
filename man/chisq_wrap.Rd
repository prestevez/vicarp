% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chisq_wrap.R
\name{chisq_wrap}
\alias{chisq_wrap}
\title{Chi-square wrapper}
\usage{
chisq_wrap(x, y = NULL, ...)
}
\arguments{
\item{x}{a numeric vector or matrix. x and y can also both be factors.}

\item{y}{a numeric vector; ignored if x is a matrix. If x is a factor,
y should be a factor of the same length.}

\item{...}{passes options to the function}
}
\description{
This function is wraps the \code{\link{chisq.test}} function
from the \code{stats} package to automatically simulate the
p-value if the data provided does not comply with the assumptions
of the Chi-square test, specifically that there is at least
one cell with less than 5 expected counts.
}
\examples{
chisq_wrap(testdata$extortion_victim, testdata$size)

# x is a matrix or an object that can be coerced into a matrix
t <- table(testdata$extortion_victim, testdata$size)
chisq_wrap(t)

# Pass number of replicates to be used if simulation is required
chisq_wrap(t, B = 1000)
}
\keyword{chi-square}
