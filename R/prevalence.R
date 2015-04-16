#' Prevalence function for Negative Binomial
#'
#' Assuming the (zero-inflated) negative binomial model,
#' this function calculates the prevalence from 
#' the parameters
#' @param rho_in the exp(beta) for the treated; 1 for the control. Default is 1.
#' @param muci_in the control mean or specified control target mean.
#' @param theta_in dispersion parameter from negative binomial model
#' @keywords tra tba pip pim
#' @export
#' @examples
#' prevalence(muci_in=10, theta_in=1.75)

prevalence <- function(rho_in=1, muci_in, theta_in){
  1-(theta_in/(rho_in*muci_in+ theta_in))^theta_in
}