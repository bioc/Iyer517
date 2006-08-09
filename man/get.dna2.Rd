\name{get.dna2}
\alias{get.dna2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ query genbank for an EST accession id }
\description{
extends the get.dna function of E Paradis CRAN package "ape"
}
\usage{
get.dna2(access.nb)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{access.nb}{ an EST accession id }
}
\details{
queries ncbi
}
\value{
a vector of nucleotide codes
}
\author{ VJ Carey <stvjc@channing.harvard.edu> }
\note{ try ape::get.dna if this fails }

\seealso{ape::get.dna} 
\examples{
if (interactive())
{
data(IyerAnnotated)
get.dna2(IyerAnnotated$GB[1])
}
}
\keyword{ models }% at least one, from doc/KEYWORDS
