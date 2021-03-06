% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mstil.logLik.R
\name{mstil.logLik}
\alias{mstil.logLik}
\title{This function estimate the value of log likelihood function}
\usage{
mstil.logLik(x, lambda, delta, Ainv, nu, u, control = list())
}
\arguments{
\item{x}{matrix of quantiles of size n x k. Each row is taken as a quantile.}

\item{lambda}{skewing matrix with k rows.}

\item{delta}{location vector of size k.}

\item{Ainv}{lower triangular matrix, where t(Ainv) * Ainv is the precision matrix.}

\item{nu}{degree of freedom (>0).}

\item{u}{(Optional) a m x k matrix, a set of samples generated from standard k-dimensional multivariate t distribution with degree of freedom nu.}

\item{control}{list of control variables, see 'details'.}
}
\value{
a list with components:
\item{logLikLower}{the lower bound of the estimated log-likelihood function.}
\item{logLik}{the estimate of the log-likelihood function.}
\item{logLikUpper}{the upper bound of the estimated log-likelihood function.}
}
\description{
This function estimate the value of log likelihood function
}
\details{
The control argument is a list that accepts the following components.
\describe{
\item{numLikSample}{a positive integer, represents the number of samples used to estimate the density and log-likelihood functions. By default 1e6. }
\item{conLevel}{a value between 0.5 and 1, represents the 1 sided confidence level of the log-likelihood to be calculated. By default 0.95.}
}
}
