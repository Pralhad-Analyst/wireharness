#' Calculate Raw Wire Cost
#'
#' @param wirelengthh numeric string which mentions the total wire length
#' @param Awg numeric string which mentions Gauge of wire
#' @param data_gauge data-set of gauge rates
#'
#' @return Raw Wire Cost (mostly in dollars)
#' @export
#'
#' @examples
wirecost <- function(data_gauge, wirelengthh, Awg) {

  w <- data_gauge %>% filter(awg == Awg)

  return(round(wirelengthh * w$Rate_dollar_per_meter, 2))

}
