\name{BSgenome.Gmax.EnsemblPlants.Gmv2}
\docType{package}

\alias{BSgenome.Gmax.EnsemblPlants.Gmv2-package}
\alias{BSgenome.Gmax.EnsemblPlants.Gmv2}
\alias{Gmax}

\title{Full genome sequences for Glycine max Williams 82}

\description{
  This package has the full genome sequences for Glycine max as provided by EnsemblPlants, and it intends to facilitate the data analysis for G. max by making its full genome sequences available through BSgenome.
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
-- information not available --
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
BSgenome.Gmax.EnsemblPlants.Gmv2
genome <- BSgenome.Gmax.EnsemblPlants.Gmv2
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
