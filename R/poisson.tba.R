#' Poisson TBA as function of TRA and control mean
#'
#' @param tra real number between 0 and 100
#' @param lamc real number in (0, Inf)
#' @keywords tra tba pip pim
#' @export
#' @examples
#' poisson.tba(80,2)
poisson.tba <- function(tra, lamc){
  num = 1-exp(-lamc*(1-tra/100))
  den = 1-exp(-lamc)
  one.minus.ratio.100(num,den)
}
