% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sort.R
\name{sort_length}
\alias{sort_length}
\title{Sort vector by length of its content}
\usage{
sort_length(vec, asc = TRUE)
}
\arguments{
\item{vec}{a vector}

\item{asc}{TRUE or FALSE whether to sort by ascending or descending order}
}
\value{
vector of items sorted by length
}
\description{
Sort the length of the content of a vector
}
\note{
This function removes all NAs prior to sorting the vector
}
\examples{
# sort by length of content
x = c("acs","tt","jdssr","h","grab")
sort_length(vec = x) # ascending order of length
sort_length(vec = x, asc = FALSE) # descending order of length


}
