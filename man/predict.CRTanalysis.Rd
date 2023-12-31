% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analyseCRT.R
\name{predict.CRTanalysis}
\alias{predict.CRTanalysis}
\title{Model predictions}
\usage{
\method{predict}{CRTanalysis}(object, ...)
}
\arguments{
\item{object}{CRTanalysis object}

\item{...}{other arguments}
}
\value{
the model predictions returned by the statistical model run within the \code{CRTanalysis} function
}
\description{
\code{predict.CRTanalysis} method for extracting model predictions
}
\examples{
{example <- readdata('exampleCRT.txt')
exampleGEE <- CRTanalysis(example, method = "GEE")
predictions <- predict(exampleGEE)
}#'
}
