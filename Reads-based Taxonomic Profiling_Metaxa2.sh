#!/bin/bash 

###############################################################################################################################################
#
#                     This Bash script is written by C.D. Alba.
#
#             This script performs the reads-based taxonomic profiling.
#             
#         You can use any terminal to run this script. Ensure that all required software is installed and that all required files are available. 
#
###############################################################################################################################################

#insert SLURM/sbatch variables here if needed

ulimit -s unlimited 

cd /path/to/raw/data &&\ 

module load anaconda/3-2021.11
source activate metaxa

metaxa2 -1 G1_R1_trimmed.fq -2 G1_R2_trimmed.fq -o G1_metaxa2 -t e -f p -g ssu --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T
