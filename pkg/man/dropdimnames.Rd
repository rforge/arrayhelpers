\name{dropdimnames}
\alias{dropdimnames}
\alias{lon}
\title{Drop dimnames if all elements are \code{NULL}}
\usage{
  dropdimnames(x)

  lon(l)
}
\arguments{
  \item{x}{object}

  \item{l}{list}
}
\value{
  object without empty dimnames

  \code{lon}: \code{NULL} if all elements of \code{dn} are
  \code{NULL}, otherwise \code{dn}
}
\description{
  Drop dimnames if all elements are \code{NULL}
}
\author{
  Claudia Beleites
}

