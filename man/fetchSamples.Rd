% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{fetchSamples}
\alias{fetchSamples}
\title{Collect samples fulfilling the specified requirements}
\usage{
fetchSamples(samples, attr = NULL, func = NULL, action = "include")
}
\arguments{
\item{samples}{an object of \code{\link[data.table]{data.table-class}} class}

\item{attr}{a string specifying a column in the \code{samples}}

\item{func}{an anonymous function, see Details for more information}

\item{action}{a string (either \code{include} or \code{exclude}) that specifies whether the function should select the row or exclude it.}
}
\value{
an object of \code{\link[data.table]{data.table-class}} class filtered according to specified requirements
}
\description{
This funciton collects the samples from a \code{\link[data.table]{data.table-class}} object that
fulfill the requirements of an attribute \code{attr} specified with
the \code{fun} argument
}
\details{
The anonymous function provided in the \code{func} argument has to return an integer that indicate the rows that the \code{action} should be performed on.
Core expressions which are most useful to implement the anonymous function are:
\itemize{
\item \code{\link[base]{which}} with inequality signs: \code{==,>,<}
\item \code{\link[base]{grep}}
}
}
\examples{
projectConfig = system.file("extdata", "example_peps-master",
"example_amendments1", "project_config.yaml", package="pepr")
p = Project(projectConfig)
s = sampleTable(p)
fetchSamples(s,attr = "sample_name", func=function(x){ which(x=="pig_0h") },action="include")
fetchSamples(s,attr = "sample_name", func=function(x){ which(x=="pig_0h") },action="exclude")
fetchSamples(s,attr = "sample_name", func=function(x){ grep("pig_",x) },action="include")
}
