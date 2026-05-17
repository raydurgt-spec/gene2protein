BiocManager::install("EnsDb.Hsapiens.v86", ask = FALSE, force = TRUE)
library(EnsDb.Hsapiens.v86)
library(ensembldb)
edb <- EnsDb.Hsapiens.v86
tx <- transcripts(edb, filter = GeneNameFilter("ALB"))
tx
prots <- proteins(edb, filter = GeneNameFilter("ALB"))
prots
cds <- cdsBy(edb, by = "tx", filter = GeneNameFilter("ALB"))
cds <- cdsBy(edb, by = "tx", filter = GeneNameFilter("ALB"))
cds
columns(edb)


prots <- proteins(edb, filter = GeneNameFilter("ALB"))
prot_ids <- prots$protein_id
prot2genome <- select(edb,
                      keys = prot_ids,
                      keytype = "PROTEINID",
                      columns = c("PROTEINID", "TXID", "GENEID", "SEQNAME"))
prot2genome