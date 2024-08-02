#!/bin/bash

zcat genes.gtf.gz \
| grep ^chr \
| cut -f1,9 \
| sed 's/; /\n/g' \
| egrep  '(chr|gene_name)' \
| sed 's/gene_name "//' \
| tr -d '"' \
| cut -f1 \
| paste - - \
| uniq \
| sort -u > gene_chr.tsv

