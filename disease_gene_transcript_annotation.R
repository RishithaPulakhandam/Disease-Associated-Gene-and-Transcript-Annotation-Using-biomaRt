#Entrez Gene ID, HGNC symbol, Ensembl Gene ID
library(biomaRt)
ensembl <- useEnsembl(biomart = "ensembl", dataset = "hsapiens_gene_ensembl")
# Set the filter for MIM morbid accessions (OMIM identifiers)
mim_ids <- c("603218", "604802", "143100", "606438", "607136")
# First table: Retrieve Entrez Gene ID, HGNC symbol, and Ensembl Gene ID
first_table <- getBM(
attributes = c('entrezgene_id', 'hgnc_symbol', 'ensembl_gene_id'),
filters = 'mim_morbid_accession',
values = mim_ids,
mart = ensembl
)
# Print the results
print(first_table)

#HGNC symbol, Ensembl Gene ID, Ensembl Transcript ID
library(biomaRt)
ensembl <- useEnsembl(biomart = "ensembl", dataset = "hsapiens_gene_ensembl")
# Set the filter for MIM morbid accessions (OMIM identifiers)
mim_ids <- c("603218", "604802", "143100", "606438", "607136")
# First table: Retrieve Entrez Gene ID, HGNC symbol, and Ensembl Gene ID
second_table <- getBM(
attributes = c('hgnc_symbol','entrezgene_id', 'ensembl_transcript_id'),
filters = 'mim_morbid_accession',
values = mim_ids,
mart = ensembl
)
# Print the results
print(second_table)
Submit
