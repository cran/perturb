\name{colldiag}
\alias{colldiag}
\alias{print.colldiag}
\title{Condition indexes and variance decomposition proportions}
\description{
  Calculates condition indexes and variance decomposition proportions in order to test for collinearity among the independent variables of a regression model and identifies the sources of collinearity if present
}
\usage{
colldiag(mod, scale = TRUE, center = FALSE, add.intercept = TRUE)

\method{print}{colldiag}(x,dec.places=3,fuzz=NULL,fuzzchar=".",...)
}
\arguments{
  \item{mod}{A model object or data-frame}
  \item{scale}{If FALSE, the data are left unscaled. Default is TRUE}
  \item{center}{If TRUE, data are centered. Default is FALSE}
  \item{add.intercept}{if TRUE, an intercept is added. Default is TRUE}
  \item{x}{A \code{colldiag} object}
  \item{dec.places}{number of decimal places to use when printing}
  \item{fuzz}{variance decomposition proportions less than \emph{fuzz} are printed as \emph{fuzzchar}}
  \item{fuzzchar}{character for small variance decomposition proportion values}
  \item{\dots}{arguments to be passed on to or from other methods}
}
\details{
\code{Colldiag} is an implementation of the regression collinearity diagnostic procedures found in Belsley, Kuh, and Welsch (1980). These procedures examine the \dQuote{conditioning} of the matrix of independent variables.

\code{Colldiag} computes the condition indexes of the matrix. If the largest condition index (the condition number) is \emph{large} (Belsley et al suggest 30 or higher), then there may be collinearity problems. All \emph{large} condition indexes may be worth investigating.

\code{Colldiag} also provides further information that may help to identify the source of these problems, the \emph{variance decomposition proportions} associated with each condition index.  If a large condition index is associated two or more variables with \emph{large} variance decomposition proportions, these variables may be causing collinearity problems.  Belsley et al suggest that a \emph{large} proportion is 50 percent or more.
}
\value{
A colldiag object
\item{condindx}{A vector of condition indexes}
\item{pi}{A matrix of variance decomposition proportions}

\code{print.colldiag} prints the condition indexes as the first column of a table with the variance decomposition proportions beside them. \code{print.colldiag} has a \code{fuzz} option to suppress printing of small numbers. If fuzz is used, small values are replaces by a period \dQuote{.}. \code{Fuzzchar} can be used to specify an alternative character.
}
\references{
D. Belsley, E. Kuh, and R. Welsch (1980).
\cite{Regression Diagnostics}.
Wiley.

Belsley, D.A. (1991).
\cite{Conditioning diagnostics, collinearity and weak data in regression}.
New York: John Wiley & Sons.
}
\author{John Hendrickx \email{John\_Hendrickx@yahoo.com}}
\note{
Colldiag is based on the Stata program \code{coldiag} by Joseph Harkness \email{joe.harkness@jhu.edu}, Johns Hopkins University.
}

\seealso{
\code{\link{lm}}, \code{\link{scale}}, \code{\link{svd}}, \code{[car]}\code{\link[car]{vif}}, \code{[Design]}\code{\link[Design]{vif}}, \code{\link{perturb}}
}
\examples{
# Belsley (1991). "Conditioning Diagnostics"
# The Consumption Function (pp. 149-154)
data(consumption)

ct1<-c(NA,c[-length(c)])

# compare (5.3)
m1<-lm(c~ct1+dpi+r+d_dpi)
anova(m1)
summary(m1)

# compare exhibit 5.11
cor(cbind(ct1,dpi,r,d_dpi),use="complete.obs")

# compare exhibit 5.12
cd<-colldiag(m1)
cd
print(cd,fuzz=.3)
}
\keyword{regression}
