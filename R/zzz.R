###
###

.pkgname <- "BSgenome.Gmax.EnsemblPlants.Gmv2"

.seqnames <- c("Glycine_max.Glycine_max_v2.1.dna.chromosome.1",  "Glycine_max.Glycine_max_v2.1.dna.chromosome.2", "Glycine_max.Glycine_max_v2.1.dna.chromosome.3", "Glycine_max.Glycine_max_v2.1.dna.chromosome.4", "Glycine_max.Glycine_max_v2.1.dna.chromosome.5", "Glycine_max.Glycine_max_v2.1.dna.chromosome.6", "Glycine_max.Glycine_max_v2.1.dna.chromosome.7", "Glycine_max.Glycine_max_v2.1.dna.chromosome.8", "Glycine_max.Glycine_max_v2.1.dna.chromosome.9", "Glycine_max.Glycine_max_v2.1.dna.chromosome.10", "Glycine_max.Glycine_max_v2.1.dna.chromosome.11", "Glycine_max.Glycine_max_v2.1.dna.chromosome.12", "Glycine_max.Glycine_max_v2.1.dna.chromosome.13", "Glycine_max.Glycine_max_v2.1.dna.chromosome.14", "Glycine_max.Glycine_max_v2.1.dna.chromosome.15", "Glycine_max.Glycine_max_v2.1.dna.chromosome.16", "Glycine_max.Glycine_max_v2.1.dna.chromosome.17", "Glycine_max.Glycine_max_v2.1.dna.chromosome.18", "Glycine_max.Glycine_max_v2.1.dna.chromosome.19", "Glycine_max.Glycine_max_v2.1.dna.chromosome.20")

.circ_seqs <- NULL

.mseqnames <- NULL

.onLoad <- function(libname, pkgname)
{
    if (pkgname != .pkgname)
        stop("package name (", pkgname, ") is not ",
             "the expected name (", .pkgname, ")")
    extdata_dirpath <- system.file("extdata", package=pkgname,
                                   lib.loc=libname, mustWork=TRUE)

    ## Make and export BSgenome object.
    bsgenome <- BSgenome(
        organism="Glycine max",
        common_name="soybean",
        provider="EnsemblPlants",
        provider_version="v2.1",
        release_date="Jul 2020",
        release_name="Glycine max v2.1",
        source_url="<ftp://ftp.ensemblgenomes.org/pub/plants/release-48/fasta/glycine_max/dna/>",
        seqnames=.seqnames,
        circ_seqs=.circ_seqs,
        mseqnames=.mseqnames,
        seqs_pkgname=pkgname,
        seqs_dirpath=extdata_dirpath
    )

    ns <- asNamespace(pkgname)

    objname <- pkgname
    assign(objname, bsgenome, envir=ns)
    namespaceExport(ns, objname)

    old_objname <- "Gmax"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}

