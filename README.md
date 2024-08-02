# sc_macrophage
scRNA-seq analysis of macrophages

# Scripts
In order of execution

1. gene_chr.sh bash script to generate a table of genes by chromosomes for QC.

2. run_cellranger_count.sh cellranger is needed to get the whitelisted cell barcodes.

3. run_hto_count.sh hash tag demultiplexing with CITE-seq count.

4. run_snpdemux.sh cellSNP-lite and vireo based SNP demultiplexing.

5. scdataprep.Rmd read in all data, separate cells by hash tag and SNP data, and do some QC.

6. TODO analyse groups.
