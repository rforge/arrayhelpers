\name{array2df}
\alias{array2df}
\title{array2df}
\usage{array2df(x, levels, matrix=FALSE, label.x=deparse(substitute(x)), na.rm=FALSE)
}
\description{array2df: Convert multidimensional array into matrix or data.frame
The "wide-format" array is converted into a "long-format" \code{matrix} or
\code{data.frame}.}
\details{If the resulting \code{data.frame} is too large to fit in memory, a
\code{matrix} might help.

The main benefit of this function is that it uses matrices as long as
possible. This can give large advantages in terms of memory consumption.}
\value{A data.frame or matrix with \code{prod (dim (x))} rows and \code{length (dim (x)) + 1}
columns.}
\author{Claudia Beleites}
\keyword{array}
\keyword{manip}
\seealso{\code{\link[utils]{stack}}}
\arguments{\item{x}{\code{array}}
\item{levels}{\code{list} with the levels for the dimensions of \code{x}.

If \code{levels[[i]]} is \code{NULL} no column is produced for this factor.

If \code{levels[[i]]} is \code{NA}, the result column is a numeric with
range from \code{1} to \code{dim (x)[i]}

If  \code{levels[[i]]} is \code{TRUE}, the levels are taken from the dimnames.

\code{names(levels)} yield the resulting column names.}
\item{matrix}{If \code{TRUE}, a numeric \code{matrix} rather than a
\code{data.frame} is returned.}
\item{label.x}{Name for the column containing the \code{x} values.}
\item{na.rm}{should rows where the value of \code{x} is \code{NA} be removed?}
}
\examples{
a <- arrayhelpers:::a
a
array2df (a)
array2df (a, matrix = TRUE)

array2df (a, levels = list(NULL, x = NA, c = NULL), label.x = "value")

array2df (a, levels = list(NULL, x = TRUE, c = c ("foo", "bar")), label.x = "value")

summary (array2df (a,
levels = list(NULL, x = NA, c = c ("foo", "bar")),
label.x = "value"))

summary (array2df (a,
levels = list(NULL, x = NA, c = c ("foo", "bar")),
label.x = "value",
matrix = TRUE))
}

