% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cr_licenses.R
\name{cr_licenses}
\alias{cr_licenses}
\alias{cr_licenses_}
\title{Search CrossRef licenses}
\usage{
cr_licenses(query = NULL, offset = NULL, limit = NULL, sort = NULL,
  order = NULL, .progress = "none", ...)

cr_licenses_(query = NULL, offset = NULL, limit = NULL, sort = NULL,
  order = NULL, .progress = "none", parse = FALSE, ...)
}
\arguments{
\item{query}{Query terms}

\item{offset}{Number of record to start at, from 1 to infinity.}

\item{limit}{Number of results to return in the query. Not relavant when
searching with specific dois. Default: 20. Max: 1000}

\item{sort}{(character) Field to sort on, one of score, relevance, updated,
deposited, indexed, or published.}

\item{order}{(character) Sort order, one of 'asc' or 'desc'}

\item{.progress}{Show a \code{plyr}-style progress bar? Options are "none",
"text", "tk", "win, and "time".  See \code{\link[plyr:create_progress_bar]{plyr::create_progress_bar()}}
for details of each.}

\item{...}{Named parameters passed on to \code{\link[crul:HttpClient]{crul::HttpClient()}}}

\item{parse}{(logical) Whether to output json \code{FALSE} or parse to
list \code{TRUE}. Default: \code{FALSE}}
}
\description{
Search CrossRef licenses
}
\details{
BEWARE: The API will only work for CrossRef DOIs.

NOTE: The API route behind this function does not support filters
any more, so the \code{filter} parameter has been removed.
}
\examples{
\dontrun{
cr_licenses()
# query for something, e.g. a publisher
cr_licenses(query = 'elsevier')

# Low level function - does no parsing to data.frame, get json or a list
cr_licenses_()
cr_licenses_(query = "elsevier")
cr_licenses_(query = "elsevier", parse=TRUE)
}
}
\references{
\url{https://github.com/CrossRef/rest-api-doc/blob/master/rest_api.md}
}
