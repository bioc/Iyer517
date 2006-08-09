\name{IyerAnnotated}
%  Iclust       GB seqno locusid        GO1        GO2  GO3  GO4  GO5
%1      N   W95909     1   80298       <NA>       <NA> <NA> <NA> <NA>
%2      A AA045003     2    6414 GO:0008430       <NA> <NA> <NA> <NA>
%3      A AA044605     3    5300 GO:0003755 GO:0005515 <NA> <NA> <NA>
%
\alias{IyerAnnotated}
\alias{Iyer517GO}
\docType{data}
\title{ Partly annotated version of Iyer517 data }
\description{
GenBank ids, LocusLink ids (where available) and GO tags (where available)
for the 517 cDNAs in the dataset.
}
\usage{data(IyerAnnotated); data(Iyer517GO)}
\format{
Iyer517GO: An environment with keys given
by the 'GB' identifiers of probes and values given
by vectors of GO tags (named by evidence codes)
obtained via locuslink mapping

IyerAnnotated: A data frame with 517 observations on the following 9 variables.
  \describe{
    \item{Iclust}{a factor with levels \code{N} \code{A} \code{B} ... --
the cluster groups A-J of the Iyer paper, with N for those
rows that were not clustered}
    \item{GB}{a factor with levels \code{AA001025} \code{AA001722} ...
accession numbers (often genbank) for probes}
    \item{seqno}{a numeric vector indicating the order of the
cDNA in the Iyer report on clustering.  (Elements 2:101 formed cluster A, etc.) }
    \item{locusid}{a numeric vector of locuslink ids, formed using AnnBuilder}
    \item{GO1}{a character vector of GO tags (there were up to five
based on the LL:GO mapping available March 2003 -- these should be
ignored in favor of the new Iyer517GO environment}
    \item{GO2}{a character vector}
    \item{GO3}{a character vector}
    \item{GO4}{a character vector}
    \item{GO5}{a character vector}
  }
}
\details{
Annotating this dataset is a good exercise for AnnBuilder.
Many of the probes seem to have no annotation.
}
\source{
\url{http://genome-www.stanford.edu/serum/data.html}
}
\references{
Iyer et al, Science v283: 83-87 (1999)
}
\examples{
data(IyerAnnotated)
table(is.na(IyerAnnotated$GO1))
data(Iyer517GO)
get(ls(env=Iyer517GO)[1],env=Iyer517GO)
}
\keyword{datasets}
