#' Method of Moments estimator for Theta (dispersion parameter) in the Standardized Model-based Zero Inflated Negative Binomial model
#'
#' @param yt.bar the observed mean in the treatment group
#' @param yc.bar the observed mean in the control group
#' @param s2t.hat the observed sample variance in treatment group
#' @param target.mean the standardized control mean that is being targeted
#' @keywords tra tba pip pim
#' @export
#' @examples
#' zinb.theta.mom(yt.bar=0.85, yc.bar=1.15, s2t.hat=2.033, target.mean = 2)
zinb.theta.mom <- function(yt.bar, yc.bar, s2t.hat, target.mean = 2){
  rho.hat = yt.bar/yc.bar
  
  num = yt.bar*target.mean*rho.hat
  den = s2t.hat - yt.bar*(1+target.mean*rho.hat-yt.bar)
  
  zinb.theta.mom <- num/den
  
  zinb.theta.mom
}


