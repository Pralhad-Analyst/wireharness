#' Calculate Approx Remaining Part Cost of Wire Harness
#'
#' @param wirecost raw wire cost
#' @param connectorcost total connector & terminal cost
#' @param location procurement location
#' @param data_sga data object of SGA
#'
#' @return total remaining cost
#' @export
#'
#' @examples
remainingpartcost <- function(data_sga, wirecost, connectorcost, location){

  r <- data_sga %>% filter(locations == location) %>% filter(Parameters == "REMAINING PART")

  return(round(r$factor *(wirecost + connectorcost), 2))
}
