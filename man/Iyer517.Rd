\name{Iyer517}
\docType{instance}
\alias{Iyer517}
\title{exprSet instance Iyer517, time series on transcriptional response of
fibroblasts to serum }
\description{  an expression set for timed measurements of transcriptional
response of fibroblasts to serum in presence or absence of cycloheximide}
\section{Slots}{
  \describe{
    \item{\code{exprs}:}{Object of class matrix, value: 517 x 19 expression levels (normed to 1 at time 0)}
    \item{\code{se.exprs}:}{Object of class matrix, value: absent}
    \item{\code{description}:}{Object of class MIAME, value: string}
    \item{\code{annotation}:}{Object of class character, value: ''}
    \item{\code{notes}:}{Object of class character, value: ''}
    \item{\code{phenoData}:}{Object of class phenoData, value: data frame
with info on timing}
    \item{\code{class}:}{Object of class character, value: 'exprSet'}
  }
}
\references{Iyer et al 1999 Science v283 83-87}
\examples{
data(Iyer517)
show(Iyer517)
plot(apply(exprs(Iyer517)[1:100,1:13],2,mean),main="Cluster A",
xlab="index in time seq", ylab="ratio to time 0", log="y")
}
\keyword{methods}
