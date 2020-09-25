#' Calculate Other Parameters of Wire harness
#'
#' @param labour labour cost
#' @param manufacturing manufacturing cost
#' @param location procurement location
#' @param parameters SGA, ICC, Packing, Profit
#' @param data_sga data-set SGA rates
#'
#' @return the parameter cost of wireharness
#' @export
#'
#' @examples
parameterscost <- function(data_sga, labour, manufacturing, location, parameters) {

  s <- data_sga %>% filter(locations == location) %>% filter(Parameters == parameters)

  return(round(s$factor * (labour + manufacturing), 2))
}
