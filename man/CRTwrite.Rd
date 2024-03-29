% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotCRT.R
\name{CRTwrite}
\alias{CRTwrite}
\title{Export of GIS layer from \code{'CRTsp'}}
\usage{
CRTwrite(
  object,
  dsn,
  feature = "clusters",
  buffer_width,
  maskbuffer = 0.2,
  ...
)
}
\arguments{
\item{object}{object of class \code{'CRTsp'}}

\item{dsn}{dataset name (relative path) for output objects}

\item{feature}{feature to be exported, options are:
\tabular{ll}{
\code{'cluster'}\tab cluster assignments \cr
\code{'arms'}\tab arm assignments \cr
\code{'buffer'}\tab buffer zone or spillover zone\cr
\code{'mask'}\tab mask for areas that are distant from habitations \cr
}}

\item{buffer_width}{width of buffer between discordant locations (km)}

\item{maskbuffer}{radius of buffer drawn around inhabited areas (km)}

\item{...}{other arguments passed to \code{'sf::write_sf'}}
}
\value{
\code{obj}, invisibly
}
\description{
\code{CRTwrite} exports a simple features object in a GIS format
}
\details{
\code{'sf::write_sf'} is used to format the output. The function returns TRUE on success,
FALSE on failure, invisibly. \cr\cr
If the input object contains a \code{'centroid'} then this is used to compute lat long
coordinates, which are assigned the "WGS84" coordinate reference system.
Otherwise the objects have equirectangular co-ordinates with centroid (0,0).\cr\cr
If \code{feature = 'buffer'} then buffer width determination is as described under
\code{plotCRT()}.
\cr\cr
The output vector objects are constructed by forming a Voronoi tessellation of polygons around
each of the locations and combining these polygons. The polygons on the outside of the study area
extend outwards to an external rectangle. The \code{'mask'} is used to mask out the areas of
these polygons that are at a distance > \code{maskbuffer} from the nearest location.
}
\examples{
\donttest{
        tmpdir = tempdir()
        dsn <- paste0(tmpdir,'/arms')
        CRTwrite(readdata('exampleCRT.txt'), dsn = dsn, feature = 'arms',
        driver = 'ESRI Shapefile', maskbuffer = 0.2)
    }
}
