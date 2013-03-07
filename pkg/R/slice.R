##' alternative to index an array
##'
##' \code{slice} is an alternative interface to \code{\link[base]{[}} (extract). 
##' Dimensions to index must be given by name, i for the first, j for the second and so on.
##' @param a vector, matrix, or array
##' @param ... indexing instructions. The names of the arguments specify the dimension 
##'    (i = 1st, j = 2nd, ...). The indexing expressions are the same as for \code{\link[base]{[}}
##' @param value the values to assign 
##' @param drop see \code{\link[base]{[}}
##' @return array
##' @author Claudia Beleites
##' @export 
##' @examples 
##' slice (arrayhelpers:::a, j = 3 : 2)
slice <- function (a, ..., drop = TRUE){
	args <- as.list (rep (TRUE, ndim (a)))
	
	dots <- list (...)
	which <- match (names (dots), letters) - 8
	
	args [which] <- dots
	
	do.call (`[`, c (list (a), args, list (drop = drop)))
}

.test (slice) <- function (){
		checkEquals (slice (a, j = 3 : 2), a [, 3 : 2, ])
		checkEquals (slice (a, j = LETTERS [3 : 2]), a [, 3 : 2, ])
		checkEquals (slice (a, j = LETTERS [3 : 2], i = -2), a [-2, 3 : 2, ])

      checkEquals (slice (a, j = 3, drop = FALSE), a [,3,,drop = FALSE])
}
##' @rdname slice
##' @usage slice (a, ...) <- value
##' @export
##' @examples
##' tmp <- arrayhelpers:::a
##' slice (tmp, j = 2 : 3) <- 0
##' tmp
`slice<-` <- function (a, ..., value){
	args <- as.list (rep (TRUE, ndim (a)))
	
	dots <- list (...)
	which <- match (names (dots), letters) - 8
	
	args [which] <- dots
	
	do.call (`[<-`, c (list (a), args, list (value = value)))
}

.test (`slice<-`) <- function (){

  tmp  <- a
  tmpa <- a
  slice (tmp, j = 2 : 3) <- slice (a, j = 3 : 2)
  tmpa [, 2 : 3 ,] <- a [, 3 : 2,]
  checkEquals (tmp, tmpa, msg = "numeric indexing")

  slice (tmp, j = LETTERS [3 : 2]) <- slice (a, j = 3 : 2)
  tmpa [, LETTERS [3 : 2] ,] <- a [, 3 : 2,]
  checkEquals (tmp, tmpa, msg = "colname indexing")

  
  slice (tmp, j = LETTERS [3 : 2], i = -2) <- slice (a, j = 3 : 2, i = -2)
  tmpa [-2, LETTERS [3 : 2] ,] <- a [-2, 3 : 2,]
  checkEquals (tmp, tmpa, msg = "mixed pos + neg numeric indexing")

  slice (tmp, j = 3) <- 4
  tmpa [,3,]         <- 4
  checkEquals (tmp, tmpa, msg = "single index")
}
