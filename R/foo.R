#' @export
#' @useDynLib ry4

foo <- function(x) {
    stopifnot(is.numeric(x))

    out <- .Fortran("foo", x = as.double(x), n = length(x), PACKAGE = "ry4")
    return(out$x)
}