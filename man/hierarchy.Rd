% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hierarchy.R
\name{hierarchy}
\alias{hierarchy}
\title{hierarchy}
\usage{
hierarchy(ee, supv, format = "long", descending = TRUE)
}
\arguments{
\item{ee}{A vector containing unique identifiers for employees.}

\item{supv}{A vector containing unique identifiers for supervisors. These values should be
of the same type as the employee values.}

\item{format}{character string; either "long" or "wide"; default = "long".}

\item{descending}{logical; default = TRUE. Should the hierarchy levels be descending 
(i.e. the top person in the hierarchy is represented at level 1)?}
}
\value{
data table
}
\description{
The hierarchy function transforms a standard set of unique employee and
supervisor identifiers (employee IDs, email addresses, etc.) into a wide or elongated format that
can be used to aggregate employee data by a particular line of leadership (i.e. include
everyone who rolls up to Susan).
}
\examples{
ee = c("Dale@hR.com","Bob@hR.com","Julie@hR.com","Andrea@hR.com")
supv = c("Julie@hR.com","Julie@hR.com","Andrea@hR.com","Susan@hR.com")
hierarchy(ee,supv,format="long",descending=TRUE)
}
