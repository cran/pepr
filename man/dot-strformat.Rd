% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{.strformat}
\alias{.strformat}
\title{Format a string like python's format method}
\usage{
.strformat(string, args, parent = NULL)
}
\arguments{
\item{string}{String with variables encoded}

\item{args}{named list of arguments to use to populate the string}

\item{parent}{a directory that will be used to make the path absolute}
}
\value{
Formatted string
}
\description{
Given a string with environment variables (encoded like \code{${VAR}} or \code{$VAR}), and
other variables (encoded like \code{{VAR}}) this function will substitute
both of these and return the formatted string, like the Python
\code{str.format()} method. Other variables are populated from a list of arguments.
Additionally, if the string is a non-absolute path, it will be expanded.
}
\examples{
.strformat("~/{VAR1}{VAR2}_file", list(VAR1="hi", VAR2="hello"))
.strformat("$HOME/{VAR1}{VAR2}_file", list(VAR1="hi", VAR2="hello"))
}
\keyword{internal}
