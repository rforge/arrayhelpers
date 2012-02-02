\name{slice}
\alias{slice}
\title{alternative to index an array}
\usage{
  slice(a, ...)
}
\arguments{
  \item{a}{vector, matrix, or array}

  \item{...}{indexing instructions. The names of the
  arguments specify the dimension (i = 1st, j = 2nd, ...).
  The indexing expressions are the same as for
  \code{\link[base]{[}}}
}
\value{
  array
}
\description{
  \code{slice} is an alternative interface to
  \code{\link[base]{[}} (extract). Dimensions to index must
  be given by name, i for the first, j for the second and
  so on.
}
\examples{
slice (arrayhelpers:::a, j = 3 : 2)
}
\author{
  Claudia Beleites
}

