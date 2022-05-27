###
###

.pkgname <- "BSgenome.Gmax.NCBI.Gmv40"

.seqnames <- NULL

.circ_seqs <- c("Pltd", "MT")

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
        common_name="Soybean",
        genome="Glycine_max_v4.0",
        provider="NCBI",
        release_date="2021/03/10",
        source_url="https://www.ncbi.nlm.nih.gov/assembly/GCF_000004515.6",
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

