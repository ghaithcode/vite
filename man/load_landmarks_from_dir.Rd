% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scaffold.R
\name{load_landmarks_from_dir}
\alias{load_landmarks_from_dir}
\title{Load landmark populations from a directory}
\usage{
load_landmarks_from_dir(dir, ...)
}
\arguments{
\item{dir}{A directory name. All the FCS files in the directory will be loaded}

\item{...}{
  Arguments passed on to \code{\link[=load_landmarks]{load_landmarks}}
  \describe{
    \item{\code{asinh.cofactor}}{The cofactor to use for \code{asinh} transformation. If this is \code{NULL} no transformation
is applied}
  }}
}
\value{
Returns a list with the following elements:
  \itemize{
    \item{\code{landmarks.data}}: a \code{data.frame} containing the entirety of the data
    \item{\code{tab.landmarks}}: a \code{data.frame} with the data for the landmark nodes. Each row is a separate landmark
      population, and the columns correspond to the median expression values of each marker. The \code{data.frame} also
      contains a column called \code{cellType} which contains the name of the corresponding landmark. In order to derive
      the name of the landmark. the name of the corresponding FCS file is split on the \code{"_"} character, and the last
      field is used for the landmark name.
  }
}
\description{
Load landmark populations from a directory
}
