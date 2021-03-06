% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/loadRegionDB.R
\name{readRegionGRL}
\alias{readRegionGRL}
\title{This function takes a region annotation object and reads in the regions,
returning a GRangesList object of the regions.}
\usage{
readRegionGRL(
  dbLocation,
  annoDT,
  refreshCaches = FALSE,
  useCache = TRUE,
  limit = NULL
)
}
\arguments{
\item{dbLocation}{folder of regiondB}

\item{annoDT}{output of readRegionSetAnnotation().}

\item{refreshCaches}{should I recreate the caches?}

\item{useCache}{uses simpleCache to cache and load the results}

\item{limit}{for testing purposes, limit the nmber of files read.
NULL for no limit (default).}
}
\value{
GRangesList object
}
\description{
This function takes a region annotation object and reads in the regions,
returning a GRangesList object of the regions.
}
\examples{
dbPath = system.file("extdata", "hg19", package="LOLA")
regionAnno = readRegionSetAnnotation(dbLocation=dbPath)
regionGRL = readRegionGRL(dbLocation= dbPath, regionAnno, useCache=FALSE)
}
