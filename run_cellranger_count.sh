#!/bin/bash

## BATCH 1

cellranger count --id=1-GEX \
  --check-library-compatibility=false \
  --fastqs=MDM-SingleCell-RNASeq/2022-scRNA-mdm-model-batch-1/concatenated \
  --sample=1-GEX \
  --transcriptome=ref_combined1/hum_hiv \
  --chemistry=SC3Pv3 \
  --localcores=32 \
  --localmem=128

cellranger count --id=2-GEX \
  --check-library-compatibility=false \
  --fastqs=MDM-SingleCell-RNASeq/2022-scRNA-mdm-model-batch-1/concatenated \
  --sample=2-GEX \
  --transcriptome=ref_combined1/hum_hiv \
  --chemistry=SC3Pv3 \
  --localcores=32 \
  --localmem=128

zcat 1-GEX/outs/filtered_feature_bc_matrix/barcodes.tsv.gz \
| cut -d '-' -f1 | sort -u > GEX1_cell_barcodes.txt

zcat 2-GEX/outs/filtered_feature_bc_matrix/barcodes.tsv.gz \
| cut -d '-' -f1 | sort -u > GEX2_cell_barcodes.txt

## BATCH2

cellranger count --id=M239-N239-Alv \
  --check-library-compatibility=false \
  --fastqs=MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/ \
  --sample=M239-N239-Alv \
  --transcriptome=ref_combined1/hum_hiv \
  --chemistry=SC3Pv3 \
  --localcores=30 \
  --localmem=100

zcat M239-N239-Alv/outs/filtered_feature_bc_matrix/barcodes.tsv.gz \
| cut -d '-' -f1 | sort -u > M239-N239-Alv_cell_barcodes.txt

cellranger count --id=N239Alv-react \
  --check-library-compatibility=false \
  --fastqs=MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/ \
  --sample=N239Alv-react \
  --transcriptome=ref_combined1/hum_hiv \
  --chemistry=SC3Pv3 \
  --localcores=30 \
  --localmem=100

cellranger count --id=P239-Alv-and-MDM \
  --check-library-compatibility=false \
  --fastqs=MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/ \
  --sample=P239-Alv-and-MDM \
  --transcriptome=ref_combined1/hum_hiv \
  --chemistry=SC3Pv3 \
  --localcores=30 \
  --localmem=100

zcat P239-Alv-and-MDM/outs/filtered_feature_bc_matrix/barcodes.tsv.gz \
| cut -d '-' -f1 | sort -u > P239-Alv-and-MDM_cell_barcodes.txt

