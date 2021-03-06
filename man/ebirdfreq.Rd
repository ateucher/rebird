% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ebirdfreq.R
\name{ebirdfreq}
\alias{ebirdfreq}
\title{Download historical frequencies of bird observations from eBird}
\usage{
ebirdfreq(loctype, loc, startyear = 1900, endyear = format(Sys.Date(),
  "\%Y"), startmonth = 1, endmonth = 12, long = TRUE, ...)
}
\arguments{
\item{loctype}{String with location type. Either "states", "counties", 
or "hotspots".}

\item{loc}{String with location identifier. If querying states 
or provinces, the two letter country code followed by the 
two letter state code and separated by "-" (e.g. "US-NY"). 
If querying counties, is as in states/provinces, but appending 
county identifier after a dash. For counties in the US, 
the county codes is a 3-digit number specific to each state 
(e.g. Bronx County: "US-NY-005"). For counties in Canada, 
county codes are two-letter identifiers (e.g. Metro Vancouver:
"CA-BC-GV"). 
If querying hotspots then the unique identifier is a 6-digit
number prepended with an "L" (e.g. "L196159"). All these codes
can be found by looking at the URL in each respective
location/hotspot webpage (which are accessible through the 
"Explore Data" tab).}

\item{startyear}{Starting year for query. Defaults to 1900.}

\item{endyear}{Ending year for query. Defaults to current year 
specified by Sys.Date().}

\item{startmonth}{Starting month for query as an integer (1-12). 
Defaults to January.}

\item{endmonth}{Ending month for query as an integer (1-12).
Defaults to December.}

\item{long}{Logical, Should output be in long format? Defaults 
to TRUE. If FALSE then output will be in wide format.}

\item{...}{Curl options passed on to \code{\link[httr]{GET}}}
}
\value{
A data frame containing the collected information. If in long format:

"monthQt": month and week (eBird data divides each month by four weeks)

"comName": species common name

"frequency": proportion of times the species was seen in a specified week

"sampleSize" number of complete eBird checklists submitted for 
   specified given week
 @return If in wide format, then first column is the species list and all
  other columns are of individual weeks (four in each month). First row 
  contains the number of complete checklists for each week.
}
\description{
Download historical frequencies of bird observations from eBird
}
\examples{
\dontrun{
ebirdfreq("states", "US-NY", 2014, 2014, 1, 12)
ebirdfreq("counties", "CA-BC-GV", 1900, 2015, 1, 3)
ebirdfreq("hotspots", "L196159", long=FALSE)
}
}
\references{
\url{http://ebird.org/}
}
\author{
Andy Teucher \email{andy.teucher@gmail.com},
   Sebastian Pardo \email{sebpardo@gmail.com}
}
