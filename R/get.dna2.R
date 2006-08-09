get.dna2 <- function (access.nb) 
{
#
# modified from E Paradis CRAN package "ape", to work with
# EST accession numbers
#
    URL <- paste("http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?db=Nucleotide&cmd=Search&term=", 
        access.nb, "&doptcmdl=GenBank", sep = "")
    tmp <- scan(file = URL, what = "", sep = "\n", quiet = TRUE)
    FI <- grep("ORIGIN", tmp) + 1
    LA <- which(tmp == "//") - 1
    tmp <- unlist(strsplit(tmp[FI:LA], NULL))
    tmp <- tmp[grep("[acgt]", tmp)]
    return(tmp)
}
