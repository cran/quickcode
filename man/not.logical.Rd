% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/not.logical.R
\name{not.logical}
\alias{not.logical}
\title{Not logical}
\usage{
not.logical(x)
}
\arguments{
\item{x}{vector entry}
}
\value{
a boolean value to indicate if entry is logical
}
\description{
Opposite of is.logical(). Check if entry is a logical object
}
\examples{
test.env <- TRUE
test.notenv <- 0
not.logical(test.env) # FALSE
not.logical(test.notenv) # TRUE
if(not.logical(test.notenv)) message("yes") # yes

}
