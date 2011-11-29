\name{delold}
\alias{delold}
\title{Strip the attributes keeping track of the former shape}
\usage{
  delold(a)
}
\arguments{
  \item{a}{the array}
}
\value{
  \code{a} stripped of the \code{old.*} attributes.
}
\description{
  Convenient for printing
}
\examples{
a <- arrayhelpers:::a
makeNd (a, 2)
delold (makeNd (a, 2))
}
\author{
  Claudia Beleites
}

