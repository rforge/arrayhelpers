##' Little helper functions to work with arrays
##' @name arrayhelpers-package
##' @title Package arrayhelpers
##' @docType package
##' @author C. Beleites
##' 
##' Maintainer: Claudia Beleites <claudia.beleites@@chemometrix.eu>
##' @include unittestdata.R
##' @import svUnit
##' @import methods
##' @keywords package
{
  if (!requireNamespace ("svUnit", quietly = TRUE)){
   `.test<-` <- function (f, value) {
      class (value) <-  c ("svTest", "function")
      attr (f, "test") <- value
      f
    }
  } else {
    `.test<-` <- svUnit::`test<-`
  }
}

    



