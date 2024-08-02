#!/bin/bash

## 1-GEX
cellsnp-lite -s 1-GEX/outs/possorted_genome_bam.bam -b 1-GEX_cellbarcodes.txt -O 1-GEX_cellsnp -p 22 \
  --minMAF 0.1 --minCOUNT 100 --gzip

vireo -c 1-GEX_cellsnp/ -N 2 -o 1-GEX_vireo

