#' Calculate manufacturing cost of wireharness
#'
#' @param wirecost raw wire cost
#' @param connectorcost total connector and terminal cost
#' @param remainingpartcost total remaining part cost
#' @param labour labour cost
#' @param location procurement location
#' @param data_sga data-set of SGA rates
#'
#' @return manufacturing cost of wireharness
#' @export
#'
#' @examples
manufacturingcost <- function(data_sga, wirecost, connectorcost, remainingpartcost, labour, location ){

  m <- data_sga %>% filter(locations == location) %>% filter(Parameters == "MANUFACTURING")

  return(round(m$factor * (wirecost + connectorcost + remainingpartcost + labour), 2))
}
