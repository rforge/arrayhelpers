##' Little helper functions to work with arrays
##' @name arrayhelpers-package
##' @docType package
##' @include unittestdata.R
{

  if (!require ("svUnit", quietly = TRUE)){
   `.test<-` <- function (f, value) {
      class (value) <-  c ("svTest", "function")
      attr (f, "test") <- value
      f
    }
  } else {
    `.test<-` <- svUnit::`test<-`
  }
}

    



