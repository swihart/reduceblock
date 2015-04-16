#' Helper function for TRA and TBA
#'
#' TRA and TBA both have the same form: 100*(1 - num/den).
#' Just specify num and den and get the desired calculation.
#' @param num the numerator in 100*(1 - num/den)
#' @param den the numerator in 100*(1 - num/den)
#' @keywords tra tba pip pim
#' @export
#' @examples
#' one.minus.ratio.100(prevalence(rho_in=exp(-3), muci_in=10, theta_in=1.75),
#'                     prevalence(muci_in=10, theta_in=1.75))

one.minus.ratio.100 <- function(num,den){100*(1-num/den)}