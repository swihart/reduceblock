#' Zero-inflated negative binomial TBA as function of TRA, control mean, and theta
#'
#' @param tra real number between 0 and 100
#' @param lamc real number in (0, Inf)
#' @keywords tra tba pip pim
#' @export
#' @examples
#' poisson.tba(80,2)
zinb.tba <- function(tra, lamc, theta){
  rho = 1-tra/100
  mu = lamc
  ##
  num = 1-(theta/(rho*mu + theta))^theta
  den = 1-(theta/(  1*mu + theta))^theta
  one.minus.ratio.100(num,den)
}
