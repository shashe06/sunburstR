% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/d2b.R
\name{sund2bBreadcrumb}
\alias{sund2bBreadcrumb}
\title{Advanced Customization of 'd2b' Breadcrumb}
\usage{
sund2bBreadcrumb(enabled = NULL, html = NULL, orient = NULL)
}
\arguments{
\item{enabled}{\code{boolean} to enable or disable the breadcrumbs.}

\item{html}{\code{character} or \code{htmlwidgets::JS} to customize the content
of the breadcrumb.  To provide a function, the arguments for the 'JavaScript'
function will be 'function(nodedata, size, percent)' and the function
should return a string.}

\item{orient}{\code{character} which should be one of "top", "left", "right", "bottom"
to control the orientation of the breadcrumb relative to the chart.}
}
\value{
\code{list}
}
\description{
Advanced Customization of 'd2b' Breadcrumb
}
\examples{
if(interactive()){

library(sunburstR)

# use a sample of the sequences csv data
sequences <- read.csv(
  system.file("examples/visit-sequences.csv",package="sunburstR")
  ,header = FALSE
  ,stringsAsFactors = FALSE
)[1:200,]

# disable the breadcrumb
sund2b(
  sequences,
  breadcrumbs = sund2bBreadcrumb(
    enabled = FALSE
  )
)

# change the breadcrumb content
sund2b(
  sequences,
  breadcrumbs = sund2bBreadcrumb(
    html = htmlwidgets::JS("
function(nodedata, size, percent) {
  return '<span style=\\"font-weight: bold;\\">' + nodedata.name + '</span>' + ' ' + size
}
    ")
  )
)


}
}
