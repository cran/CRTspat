% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analyseCRT.R
\name{fitted.CRTanalysis}
\alias{fitted.CRTanalysis}
\title{Extract model fitted values}
\usage{
\method{fitted}{CRTanalysis}(object, ...)
}
\arguments{
\item{object}{CRTanalysis object}

\item{...}{other arguments}
}
\value{
the fitted values returned by the statistical model run within the \code{CRTanalysis} function
}
\description{
\code{fitted.CRTanalysis} method for extracting model fitted values
}
\examples{
{example <- readdata('exampleCRT.txt')
exampleGEE <- CRTanalysis(example, method = "GEE")
fitted_values <- fitted(exampleGEE)
}
}
