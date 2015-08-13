#' @export
#' @useDynLib ry4

foo <- function(x) {
    type <- match.arg(type)
    stopifnot(is.numeric(x))

    out <- .Fortran("foo", x = as.double(x), n = length(x), PACKAGE = "foo")
    return(out$x)
}