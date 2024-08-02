#!/bin/bash

# run `conda deactivate` until it gives an error
# run `conda activate citeseq`
# check python version before running (it should be 3.7)

# HTO FASTQ files
#./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/M239-N239-Alv-HTO_S2_L001_I1_001.fastq.gz
#./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/M239-N239-Alv-HTO_S2_L001_I2_001.fastq.gz
#./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/M239-N239-Alv-HTO_S2_L001_R1_001.fastq.gz
#./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/M239-N239-Alv-HTO_S2_L001_R2_001.fastq.gz
#./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/P239-Alv-and-MDM-HTO_S1_L001_I1_001.fastq.gz
#./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/P239-Alv-and-MDM-HTO_S1_L001_I2_001.fastq.gz
#./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/P239-Alv-and-MDM-HTO_S1_L001_R1_001.fastq.gz
#./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/P239-Alv-and-MDM-HTO_S1_L001_R2_001.fastq.gz

###########################################

# this works okay
CITE-seq-Count --sliding-window -wl GEX1_cell_barcodes.txt -T 16 -t tags.csv \
  -cbf 1 -cbl 16 -umif 17 -umil 28 -cells 20000 -o 1-CSP_hto --bc_collapsing_dist 2 \
  -R1 ./MDM-SingleCell-RNASeq/2022-scRNA-mdm-model-batch-1/concatenated/1-CSP_S1_L001_R1_001.fastq.gz \
  -R2 ./MDM-SingleCell-RNASeq/2022-scRNA-mdm-model-batch-1/concatenated/1-CSP_S1_L001_R2_001.fastq.gz

CITE-seq-Count --sliding-window -wl GEX2_cell_barcodes.txt -T 16 -t tags.csv \
  -cbf 1 -cbl 16 -umif 17 -umil 28 -cells 20000 -o 2-CSP_hto --bc_collapsing_dist 2 \
  -R1 ./MDM-SingleCell-RNASeq/2022-scRNA-mdm-model-batch-1/concatenated/2-CSP_S3_L001_R1_001.fastq.gz \
  -R2 ./MDM-SingleCell-RNASeq/2022-scRNA-mdm-model-batch-1/concatenated/2-CSP_S3_L001_R2_001.fastq.gz

CITE-seq-Count --sliding-window -wl M239_N239_Alv_cell_barcodes.txt -T 16 -t tags.csv \
  -cbf 1 -cbl 16 -umif 17 -umil 28 -cells 20000 -o M239-N239-Alv_hto --bc_collapsing_dist 2 \
  -R1 ./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/M239-N239-Alv-HTO_S2_L001_R1_001.fastq.gz  \
  -R2 ./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/M239-N239-Alv-HTO_S2_L001_R2_001.fastq.gz

CITE-seq-Count --sliding-window -wl P239_Alv_and_MDM_cell_barcodes.txt -T 16 -t tags.csv \
  -cbf 1 -cbl 16 -umif 17 -umil 28 -cells 20000 -o P239-Alv-and-MDM_hto --bc_collapsing_dist 2 \
  -R1 ./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/P239-Alv-and-MDM-HTO_S1_L001_R1_001.fastq.gz \
  -R2 ./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/P239-Alv-and-MDM-HTO_S1_L001_R2_001.fastq.gz


exit
## try trim 10 results not good.
CITE-seq-Count -trim 10 -wl GEX1_cell_barcodes.txt -T 16 -t tags.csv \
  -cbf 1 -cbl 16 -umif 17 -umil 28 -cells 20000 -o 1-CSP_hto --bc_collapsing_dist 2 \
  -R1 ./MDM-SingleCell-RNASeq/2022-scRNA-mdm-model-batch-1/concatenated/1-CSP_S1_L001_R1_001.fastq.gz \
  -R2 ./MDM-SingleCell-RNASeq/2022-scRNA-mdm-model-batch-1/concatenated/1-CSP_S1_L001_R2_001.fastq.gz

CITE-seq-Count -trim 10 -wl M239_N239_Alv_cell_barcodes.txt -T 16 -t tags.csv \
  -cbf 1 -cbl 16 -umif 17 -umil 28 -cells 20000 -o M239-N239-Alv_hto --bc_collapsing_dist 2 \
  -R1 ./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/M239-N239-Alv-HTO_S2_L001_R1_001.fastq.gz  \
  -R2 ./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/M239-N239-Alv-HTO_S2_L001_R2_001.fastq.gz

CITE-seq-Count -trim 10 -wl P239_Alv_and_MDM_cell_barcodes.txt -T 16 -t tags.csv \
  -cbf 1 -cbl 16 -umif 17 -umil 28 -cells 20000 -o P239-Alv-and-MDM_hto --bc_collapsing_dist 2 \
  -R1 ./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/P239-Alv-and-MDM-HTO_S1_L001_R1_001.fastq.gz \
  -R2 ./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/P239-Alv-and-MDM-HTO_S1_L001_R2_001.fastq.gz


# KINDA WORKS

#CITE-seq-Count -trim 10 \
#  -R1 ./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/M239-N239-Alv-HTO_S2_L001_R1_001.fastq.gz \
#  -R2 ./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/M239-N239-Alv-HTO_S2_L001_R2_001.fastq.gz \
#  -T 16 -t tags.csv -cbf 1 -cbl 16 -umif 17 -umil 28 -cells 10000 -o M239-N239-Alv-HTO

#CITE-seq-Count -trim 10 \
#  -R1 ./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/P239-Alv-and-MDM-HTO_S1_L001_R1_001.fastq.gz \
#  -R2 ./MDM-SingleCell-RNASeq/230225_A00692_0341_BH7Y5WDSX5_Batch_2_2023/P239-Alv-and-MDM-HTO_S1_L001_R2_001.fastq.gz \
#  -T 16 -t tags.csv -cbf 1 -cbl 16 -umif 17 -umil 28 -cells 10000 -o P239-Alv-and-MDM-HTO


