% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/math.R
\name{math.qt}
\alias{math.qt}
\alias{math.mm}
\title{Miscellaneous math computations: Corresponding m-m and quantile for confident intervals}
\usage{
math.qt(ci = 0.9)

math.mm(Vmax, S, Km, V, round = NULL)
}
\arguments{
\item{ci}{confident interval eg. 0.9 for 90 percent confident intervals}

\item{Vmax}{The maximum velocity of the enzymatic reaction.}

\item{S}{The substrate concentration.}

\item{Km}{The substrate concentration at which the reaction rate is half of Vmax.}

\item{V}{The current velocity of the enzymatic reaction}

\item{round}{round result to number of decimal places}
}
\value{
vector of two numeric values for the quantile based on the confident interval chosen

result of calculation of Michaelis-Menten equation
}
\description{
Compute the corresponding quantile given confident interval bounds
}
\examples{

# Get the bounds for 90\% confident intervals
math.qt(0.9)

# Get the bounds for 95\% confident intervals
# use the bounds to obtain quartile
values = number(100)
values
ci = math.qt(0.95)
getquart = quantile(values, probs = ci)
getquart

math.mm(3,500,0.5)

}
