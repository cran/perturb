\name{reclassify.internal}
\alias{reclassify.internal}
\alias{exptab}
\alias{bestmod}
\alias{assocPat}
\alias{prnt.tbl}
\title{Functions used internally by reclassify}
\description{
  Functions called internally by \code{\link{reclassify}} are documented here
}
\usage{
exptab(pcnt,freq,ncat,min.val)

bestmod(init.tbl,ncat,mdl,mdl2)

assocPat(freq,ncat,diag=NULL,unif=NULL,dist=NULL,assoc=NULL)

prnt.tbl(x,header,dec.places,lbl=TRUE)
}
\arguments{
  \item{pcnt}{initial reclassification percentages}
  \item{freq}{frequency distribution of specified \emph{varname}}
  \item{ncat}{number of categories of \emph{varname}}
  \item{min.val}{value to add to empty cells of the initial expected table}
  \item{init.tbl}{initial expected table}
  \item{mdl}{string containing the appropriate model for this table}
  \item{mdl2}{alternative model}
  \item{diag}{The odds of same versus different category reclassification}
  \item{unif}{Controls short distance versus long distance reclassification for ordered variables}
  \item{dist}{alternative parameter for short versus long distance reclassification}
  \item{assoc}{a matrix defining a loglinear pattern of association}
  \item{x}{a component of a reclassify object}
  \item{header}{table title}
  \item{dec.places}{number of decimal places to use when printing}
  \item{lbl}{if FALSE, don't print \dQuote{original/reclassified} above table}
}
\details{
  \code{Exptab} calculates the initial reclassification probabilities and initial expected table based on the \code{pcnt} option in reclassify.

  \code{Bestmod} determines the best model for the initial expected table

  \code{assocPat} imposes the pattern of association between the original and the reclassified variable.

  \code{prnt.tbl} is called by \code{\link{print.reclassify}} to print certain matrices as tables.
}
\value{
  \item{exptab$init.pcnt}{Initial reclassification probabilities}
  \item{exptab$init.tbl}{Initial expected table}
  \item{exptab$init.mdl}{String describing best model for \code{init.tbl}}
  \item{exptab$init.mdl2}{String describing an alternative model}
  \item{bestmod$model}{Contains either \code{mdl} or \code{mdl2}, depending on which fit best}
  \item{bestmod$coefs}{Coefficients of the best model}
  \item{bestmod$paras}{Predicted values based on \code{coefs}}
  \item{assocPat$pred}{Adjusted table with pattern of association specified in the \code{assocPat} options}
  \item{assocPat$iter}{Number of iterations when imposing association pattern}
  \item{assocPat$converged}{Did the model converge when imposing association pattern}
  \item{assocPat$coefs}{Coefficients of \code{diag}, \code{unif}, or \code{dist}}
}
\author{John Hendrickx \email{John\_Hendrickx@yahoo.com}}
\seealso{\code{\link{reclassify}}, \code{\link{perturb}}}
\keyword{regression}
