% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/init.R
\name{init}
\alias{init}
\title{Initialize new variables and objects}
\usage{
init(..., value = NULL)
}
\arguments{
\item{...}{variable names to initialize}

\item{value}{value to initialize them to}
}
\value{
initialized objects set to the value specified
}
\description{
Shorthand to initialize one or more objects
}
\examples{
init(t,u,v)
message(t) # t = NULL
message(u) # u = NULL
message(v) # v = NULL
init(j,k,m,value = 7)
message(j) # j = 7
message(k) # k = 7
message(m) # m = 7

}
