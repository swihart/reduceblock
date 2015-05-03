#' Poisson TRA as function of TBA and control mean
#'
#' @param tba real number between 0 and 100
#' @param lamc real number in (0, Inf)
#' @keywords tra tba pip pim
#' @export
#' @examples
#' poisson.tra(80,2)
poisson.tra <- function(tba, lamc){
  num = -log(1-(1-tba/100)*(1-exp(-lamc)))
  den = lamc
  one.minus.ratio.100(num,den)
}
