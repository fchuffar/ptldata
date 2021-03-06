% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/genodata.R
\name{generate_genodata}
\alias{generate_genodata}
\title{A Function That Generates a Genome.}
\usage{
generate_genodata(alleles, half_chr_width = 100, teta = 0.05)
}
\arguments{
\item{alleles}{A vector that describes significant parental alleles (those that will control your phenotype}

\item{half_chr_width}{An integer that defines the length of the (half (chromosome size minus 1)).}

\item{teta}{An interger that specify recombination factor to use.}
}
\description{
This function generates a genome around significant parental alleles.
}
\examples{
alleles = sample(c("BY","RM"), 25, replace=TRUE)
print(alleles)
genodata = generate_genodata(alleles, half_chr_width=50)
print(genodata)
tetas = compute_teta(genodata)
# matlab::imagesc(t(as.matrix(genodata)), xlab="markers", 
#   ylab="segrgants", main="Parental origin of segregant genomes")
plot(density(tetas), main=paste("Recombination Fraction Distribution"), 
  xlab=paste("mean(teta)=", signif(mean(tetas),3), sep=""))
abline(v=mean(tetas), lty=2)
}

