\name{BSgenome.Gmax.NCBI.Gmv40}
\docType{package}

\alias{BSgenome.Gmax.NCBI.Gmv40-package}
\alias{BSgenome.Gmax.NCBI.Gmv40}
\alias{Gmax}

\title{Full genome sequences for Glycine max (Gmv40)}

\description{
  Full genome sequences for Glycine max as provided by NCBI (assemblyGmv40, assembly accession GCF_000004515.5) and stored in Biostrings objects.
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
GCF_000004515.6_Glycine_max_v4.0_genomic.fna.gz  from https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/004/515/GCF_000004515.6_Glycine_max_v4.0/
  }

  See \code{?\link[BSgenome]{BSgenomeForge}} and the BSgenomeForge
  vignette (\code{vignette("BSgenomeForge")}) in the \pkg{BSgenome}
  software package for how to make a BSgenome data package.
}

\author{person("Deisiany", "Ferreira Neres", email = "deisianyufg@gmail.com", role = c("aut", "cre"))}

\seealso{
  \itemize{
    \item \link[BSgenome]{BSgenome} objects and the
          \code{\link[BSgenome]{available.genomes}} function
          in the \pkg{BSgenome} software package.
    \item \link[Biostrings]{DNAString} objects in the \pkg{Biostrings}
          package.
    \item The BSgenomeForge vignette (\code{vignette("BSgenomeForge")})
          in the \pkg{BSgenome} software package for how to make a BSgenome
          data package.
  }
}

\examples{
BSgenome.Gmax.NCBI.Gmv40
genome <- BSgenome.Gmax.NCBI.Gmv40
head(seqlengths(genome))


## ---------------------------------------------------------------------
## Genome-wide motif searching
## ---------------------------------------------------------------------
## See the GenomeSearching vignette in the BSgenome software
## package for some examples of genome-wide motif searching using
## Biostrings and the BSgenome data packages:
if (interactive())
    vignette("GenomeSearching", package="BSgenome")
}

\keyword{package}
\keyword{data}
