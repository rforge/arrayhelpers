\docType{methods}
\name{colSums}
\alias{colMeans}
\alias{colMeans,array-method}
\alias{colMeans.AsIs}
\alias{colMeans,matrix-method}
\alias{colSums}
\alias{colSums,array-method}
\alias{colSums.AsIs}
\alias{colSums,matrix-method}
\alias{rowMeans}
\alias{rowMeans,array-method}
\alias{rowMeans.AsIs}
\alias{rowMeans,matrix-method}
\alias{rowSums}
\alias{rowSums,array-method}
\alias{rowSums.AsIs}
\alias{rowSums,matrix-method}
\title{Row and column sums and means for numeric arrays.}
\usage{
  \S4method{colSums}{matrix}(x, na.rm = FALSE, dims = 1L,
    drop = TRUE)

  colSums.AsIs(x, ...)

  \S4method{colSums}{array}(x, na.rm = FALSE, dims = 1L,
    drop = TRUE)

  \S4method{colMeans}{matrix}(x, na.rm = FALSE, dims = 1L,
    drop = TRUE)

  colMeans.AsIs(x, ...)

  \S4method{colMeans}{array}(x, na.rm = FALSE, dims = 1L,
    drop = TRUE)

  \S4method{rowSums}{matrix}(x, na.rm = FALSE, dims = 1L,
    drop = TRUE)

  rowSums.AsIs(x, ...)

  \S4method{rowSums}{array}(x, na.rm = FALSE, dims = 1L,
    drop = TRUE)

  \S4method{rowMeans}{matrix}(x, na.rm = FALSE, dims = 1L,
    drop = TRUE)

  rowMeans.AsIs(x, ...)

  \S4method{rowMeans}{array}(x, na.rm = FALSE, dims = 1L,
    drop = TRUE)
}
\arguments{
  \item{x}{an array of two or more dimensions, containing
  numeric, complex, integer or logical values, or a numeric
  data frame.}

  \item{na.rm}{logical indicating treatment of missing
  values}

  \item{dims}{integer: Which dimensions are regarded as
  \sQuote{rows} or \sQuote{columns} to sum over.  For
  \code{row*}, the sum or mean is over dimensions
  \code{dims + 1, \dots}; for \code{col*} it is over
  dimensions \code{1 : dims}.}

  \item{...}{the \code{signature = "AsIs"} methods hand on
  all parameters}

  \item{drop}{If \code{FALSE}, the number of dimensions is
  retained: the length of the dimensions that are summed or
  averaged is set to 1. \code{TRUE} yield the same
  behaviour as \code{\link[base]{colSums}}}
}
\value{
  like \code{\link[base]{colSums}} if \code{drop = TRUE},
  otherwise an array where the summed dimensions have
  length 1.
}
\description{
  These functions extend the respective base functions by
  (optionally) preserving the shape of the array (i.e. the
  summed dimensions have length 1).
}
\examples{
a <- array (1 : 24, 4 : 2)
a

rowSums (a)
rowSums (a, drop = FALSE)

colSums (a)
colSums (a, drop = FALSE)

colSums (a, dim = 2)
colSums (a, dim = 2, drop = FALSE)
}
\author{
  Claudia Beleites
}
\seealso{
  \code{\link[base]{colSums}}
}
\keyword{algebra}
\keyword{arith}
\keyword{array}

