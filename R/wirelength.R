#' Calculate Wire Length
#'
#' @param copperlength numeric string where copper length should be in mm.
#'
#' @return wirelength in meter
#' @export
#'
#' @examples
wirelength <- function(copperlength) {

  return(round((1.09 * copperlength)/ 1000, 1))
}


