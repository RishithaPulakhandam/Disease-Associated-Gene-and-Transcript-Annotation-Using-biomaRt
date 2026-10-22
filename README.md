# Disease-Associated Gene and Transcript Annotation Using biomaRt

## Project Overview

This project uses the R package `biomaRt` to retrieve gene and transcript annotations associated with five Online Mendelian Inheritance in Man (OMIM) identifiers related to Huntington's disease and similar neurological disorders. The annotations are retrieved from the Ensembl human gene dataset using the `mim_morbid_accession` filter.

The project compares gene-level and transcript-level annotation tables to demonstrate how one gene can be associated with multiple transcripts.

## Objectives

- Retrieve gene annotations associated with five specified OMIM identifiers.
- Obtain Entrez Gene IDs, HGNC gene symbols, and Ensembl Gene IDs.
- Retrieve Ensembl Transcript IDs associated with the corresponding genes.
- Compare gene-level and transcript-level results.
- Explain why the two tables contain different numbers of rows.

## OMIM Identifiers

The analysis uses the following five identifiers from the original coursework:

| OMIM identifier | Disorder or record title |
|---|---|
| 603218 | Huntington Disease-Like 1 (HDL1) |
| 604802 | Huntington Disease-Like 3 (HDL3) |
| 143100 | Huntington Disease (HD) |
| 606438 | Huntington Disease-Like 2 (HDL2) |
| 607136 | Spinocerebellar Ataxia 17 (SCA17) |

## Tools and Technologies

- **R:** Programming language used for retrieving and processing annotations.
- **biomaRt:** R package for querying Ensembl BioMart.
- **Ensembl:** Source of human gene and transcript annotations.
- **OMIM identifiers:** Used to filter records associated with the selected disorders.

## Methodology

### 1. Retrieve gene-level annotations

The first query retrieves three attributes:

- Entrez Gene ID (`entrezgene_id`)
- HGNC symbol (`hgnc_symbol`)
- Ensembl Gene ID (`ensembl_gene_id`)

The query uses the `mim_morbid_accession` filter and the five OMIM identifiers.

### 2. Retrieve transcript-level annotations

The second query retrieves:

- HGNC symbol (`hgnc_symbol`)
- Entrez Gene ID (`entrezgene_id`)
- Ensembl Transcript ID (`ensembl_transcript_id`)

This query uses the same filter and identifiers but includes transcript-level information instead of the Ensembl Gene ID.

### 3. Compare the tables

The two outputs are compared to understand the relationship between genes and their transcripts.

The first table represents gene-level annotations, while the second can contain multiple rows for a gene when multiple transcripts are returned.

## Why Do the Tables Have Different Numbers of Rows?

A gene can produce multiple transcripts through alternative splicing and other transcript-processing mechanisms. Each transcript can have its own stable Ensembl Transcript ID.

Consequently, a gene-level table generally contains fewer rows because it represents genes rather than individual transcripts. The transcript-level table may contain multiple rows for the same gene, with each row representing a transcript returned by the query.

The exact row counts depend on the annotations returned by Ensembl for the specified identifiers and the database version queried.

## Results

The project produces two tables:

1. **Gene annotation table:** Entrez Gene ID, HGNC symbol, and Ensembl Gene ID.
<img width="2266" height="660" alt="image" src="https://github.com/user-attachments/assets/a9202bf0-d97e-438f-8641-50c85346618f" />
<img width="662" height="176" alt="image" src="https://github.com/user-attachments/assets/56a49bef-1cc9-4a94-be1f-c6ae380ce80a" />
3. **Transcript annotation table:** HGNC symbol, Entrez Gene ID, and Ensembl Transcript ID.
<img width="682" height="1222" alt="image" src="https://github.com/user-attachments/assets/68e57e21-2de7-4373-a732-9384d0db66df" />
<img width="2244" height="934" alt="image" src="https://github.com/user-attachments/assets/c4089b83-43d4-466e-ab82-44e4ccfee27f" />


The original coursework code and the resulting tables should be included in the repository so the analysis can be reviewed and reproduced.

## Limitations

- Results depend on the Ensembl annotations available when the query is run.
- Some OMIM identifiers may return multiple records or no matching annotations.
- The gene-level and transcript-level outputs may contain duplicate-looking rows because of the relationships between OMIM records, genes, and transcripts.
- The tables should be regenerated and inspected before drawing conclusions about exact row counts or gene-to-transcript relationships.

## Project Status

Coursework-based bioinformatics annotation exercise, organized for GitHub documentation and reproducibility.
