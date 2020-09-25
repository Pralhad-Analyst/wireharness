#' Calculate Labour Cost of Wire Harness
#'
#' @param wirecost raw wire cost
#' @param connectorcost total connector & terminal cost
#' @param remainingpartcost total remaining part cost
#' @param location procurement location
#' @param data_sga data-set of SGA rates
#'
#' @return labour cost of wireharness
#' @export
#'
#' @examples
labourcost <- function(data_sga, wirecost, connectorcost, remainingpartcost, location){

  l <- data_sga %>% filter(locations == location) %>% filter(Parameters == "LABOR")

  return(round(l$factor * (wirecost + connectorcost + remainingpartcost), 2))
}
