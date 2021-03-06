% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/victim_table.R
\name{victim_table}
\alias{victim_table}
\title{Vicimisation distribution table}
\usage{
victim_table(x, data = NULL, print_option = c("none", "markdown", "pandoc",
  "latex", "html"))
}
\arguments{
\item{x}{A numeric or intenger vector of event counts. If
\code{data} is provided, x is the character label of the column
of event counts.}

\item{data}{A data frame.}

\item{print_options}{Provides the option to print out results as
a table formatted by \code{\link{kable}} from the \code{knitr} package.}
}
\description{
A function to create distribution tables of victimisation counts.
}
\examples{
victim_table(testdata$extortions)

victim_table("extortions", data = testdata, print_option = "pandoc")
}
\keyword{distribution}
