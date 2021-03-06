% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ebirdtaxonomy.R
\name{ebirdtaxonomy}
\alias{ebirdtaxonomy}
\title{eBird Taxonomy}
\usage{
ebirdtaxonomy(cat = NULL, locale = NULL, ...)
}
\arguments{
\item{cat}{Species category. String or character vector with one of more of:
"domestic", "form", "hybrid", "intergrade", "issf", "slash", "species", "spuh". 
For more info about the meaning of species categories, see 
\url{https://help.ebird.org/customer/en/portal/articles/1006825-the-ebird-taxonomy}.}

\item{locale}{Language/locale of response (when translations are available).
See \url{http://java.sun.com/javase/6/docs/api/java/util/Locale.html} and 
\url{https://help.ebird.org/customer/portal/articles/1596582-common-name-translations-in-ebird} 
(defaults to en_US).}

\item{...}{Curl options passed on to \code{\link[httr]{GET}}}
}
\value{
A data.frame containing the collected information:

"comName": species' common name

"sciName": species' scientific name

"taxonID": Taxonomic Concept identifier, note this is currently in test
}
\description{
Returns a data.frame of all species in the eBird taxonomy for the given 
combination of categories. The default category is "species". Any taxon with 
the category of 'species' may be used as a parameter in service calls that 
take a scientific name. Any taxon not in this category will be rejected by 
these services at this time.
}
\examples{
\dontrun{
ebirdtaxonomy()
ebirdtaxonomy(cat=c("spuh", "slash")) 
}
}
\references{
\url{http://ebird.org/}
}
\author{
Andy Teucher \email{andy.teucher@gmail.com}
}
