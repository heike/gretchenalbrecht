% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createpalette.R
\name{make_palette}
\alias{make_palette}
\title{Create a palette of (almost) arbitrary size from given image}
\usage{
make_palette(jpgfile, limit = 1000)
}
\arguments{
\item{jpgfile}{name of the image from which the color palette is to be extracted}

\item{limit}{number of sample points to be extracted from the image}
}
\value{
cluster object
}
\description{
Up to `limit` colours are extracted from the image and clustered.
}
\examples{
rc <- make_palette("https://s3.amazonaws.com/img.aasd.com.au/05574461.jpg")
rc$name <- "rosa concorde"

gsw <- make_palette("https://s3.amazonaws.com/img.aasd.com.au/52775868.jpg")
gsw$name <- "grey sky winter"

get_pal(5, gsw) \%>\% ggplot() + 
   geom_tile(aes(x=1, y = 1, fill=col)) + 
   scale_fill_identity() + facet_wrap(~k)
   
gs <- make_palette("https://s3.amazonaws.com/img.aasd.com.au/52333415.jpg")
gs$name <- "golden shadow"

get_pal(10, gs) \%>\% ggplot() + 
   geom_tile(aes(x=1, y = 1, fill=col)) + 
   scale_fill_identity() + facet_wrap(~k)
# now add to internal data object to make it accessible for future use
}
