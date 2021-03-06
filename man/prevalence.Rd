% Generated by roxygen2 (4.1.0.9001): do not edit by hand
% Please edit documentation in R/prevalence.R
\name{prevalence}
\alias{prevalence}
\title{Prevalence function for Negative Binomial}
\usage{
prevalence(rho_in = 1, muci_in, theta_in)
}
\arguments{
\item{rho_in}{the exp(beta) for the treated; 1 for the control. Default is 1.}

\item{muci_in}{the control mean or specified control target mean.}

\item{theta_in}{dispersion parameter from negative binomial model}
}
\description{
Assuming the (zero-inflated) negative binomial model,
this function calculates the prevalence from
the parameters
}
\examples{
prevalence(muci_in=10, theta_in=1.75)
}
\keyword{pim}
\keyword{pip}
\keyword{tba}
\keyword{tra}

