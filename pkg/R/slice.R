##' alternative to index an array
##'
##' \code{slice} is an alternative interface to \code{\link[base]{[}} (extract). 
##' Dimensions to index must be given by name, i for the first, j for the second and so on.
##' @param a vector, matrix, or array
##' @param ... indexing instructions. The names of the arguments specify the dimension 
##'    (i = 1st, j = 2nd, ...). The indexing expressions are the same as for \code{\link[base]{[}}
##' @return array
##' @author Claudia Beleites
##' @export 
##' @examples 
##' slice (arrayhelpers:::a, j = 3 : 2)
slice <- function (a, ...){
	args <- as.list (rep (TRUE, ndim (a)))
	
	dots <- list (...)
	which <- match (names (dots), letters) - 8
	
	args [which] <- dots
	
	do.call (`[`, c (list (a), args))
}

.test (slice) <- function (){
		checkEquals (slice (a, j = 3 : 2), a [, 3 : 2, ])
		checkEquals (slice (a, j = LETTERS [3 : 2]), a [, 3 : 2, ])
		checkEquals (slice (a, j = LETTERS [3 : 2], i = -2), a [-2, 3 : 2, ])
}