% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seq_range.R
\name{in.range}
\alias{in.range}
\title{If number falls within a range of values and get closest values}
\usage{
in.range(
  value,
  range.min,
  range.max,
  range.vec = NULL,
  closest = FALSE,
  rm.na = FALSE
)
}
\arguments{
\item{value}{NUMERIC. the vector of numbers to check}

\item{range.min}{NUMERIC. OPTIONAL. the minimum value of the range}

\item{range.max}{NUMERIC. OPTIONAL. the maximum value of the range}

\item{range.vec}{NUMERIC. OPTIONAL. a vector of numbers to use for the range}

\item{closest}{BOOLEAN. OPTIONAL. return closest value}

\item{rm.na}{BOOLEAN. OPTIONAL. remove NA values from input}
}
\value{
boolean to indicate if the value or set of values are within the range
}
\description{
With a defined range of values, the function systematically examines
each provided number to determine if it falls within the specified range. It may
also provide the values with the range that are closest to a desired number.
}
\details{
The described function serves the purpose of checking whether a given number
or set of numbers falls within a specified range. It operates by taking a range
of values as input and then systematically evaluates each provided number to
determine if it lies within the defined range. This function proves particularly
useful for scenarios where there is a need to assess numeric values
against predefined boundaries, ensuring they meet specific criteria or constraints.
In the same manner, this function allows the user to also retrieve values within
the range that are closest to each provided number.
}
\note{
The argument range.vec is utilized when users opt not to employ the range.min or
range.max arguments. If range.vec is specified, range.min and range.max are
disregarded. It's important to note that the use of range.vec is optional.
}
\examples{
# Task 1: Check if a number is within specified range
in.range(5, range.min = 3, range.max = 10) # TRUE
in.range(25, range.min = 12, range.max = 20) # FALSE

# Task 2: Check if a set of values are within a specified range
in.range(1:5, range.min = 2, range.max = 7) #
in.range(50:60, range.min = 16, range.max = 27) #


# Task 3: Check if a number is within the range of a set of numbers
in.range(5, range.vec = 1:10) # TRUE
in.range(345, range.vec = c(1001,1002,1003,1004,1005,
1006,1007,1008,1009,1010,1011,1012,1013,1014)) # FALSE

# Task 4: Check if a set of values are within the range of a set of numbers
in.range(1:5, range.vec = 4:19) #
in.range(50:60, range.vec = c(55,33,22,56,75,213,120)) #

# Task 5: remove NAs prior to processing
in.range(c(1,3,NA,3,4,NA,8), range.min = 4, range.max = 6, rm.na = FALSE) # do not remove NA
in.range(c(1,3,NA,3,4,NA,8), range.min = 4, range.max = 6, rm.na = TRUE) # remove NA
#in.range(c(NA), range.min = 4, range.max = 6, rm.na = TRUE) #This will return error

# Task 6: return the closest number to the value
in.range(5:23, range.vec = 7:19, closest = TRUE)
in.range(-5:10, range.vec = -2:19, closest = TRUE)
in.range(c(1:5,NA,6:9), range.vec = 4:19, closest = TRUE)
in.range(c(1:5,NA,6:9), range.vec = 4:19, closest = TRUE, rm.na = TRUE)

}
