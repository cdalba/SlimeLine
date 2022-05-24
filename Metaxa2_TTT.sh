#!/bin/bash

###############################################################################################################################################
#
#                     This Bash script is written by C.D. Alba.
#
#             This script can be used for summarizing the output of the taxonomic profiling.
#             
#         You can use any terminal to run this script. Ensure that all required software is installed and that all required files are available. 
#
###############################################################################################################################################

#insert SLURM/sbatch variables here if needed

ulimit -s unlimited 

cd /path/to/raw/data &&\ 

module load anaconda/3-2021.11
source activate metaxa

metaxa2_ttt -i G1_metaxa2.taxonomy.txt -o G1_metaxa2_ttt_output -t e -l 0
