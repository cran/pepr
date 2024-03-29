% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/config.R
\name{.applyImports}
\alias{.applyImports}
\title{Function for recursive config data imports}
\usage{
.applyImports(cfg_data, filename)
}
\arguments{
\item{cfg_data}{config data, possibly including imports statement}

\item{filename}{path to the file to get the imports for}
}
\value{
config data enriched in imported sections, if imports existed in the
 input
}
\description{
Function for recursive config data imports
}
\keyword{internal}
