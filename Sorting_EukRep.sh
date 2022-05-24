#!/bin/bash

###############################################################################################################################################
#
#                     This Bash script is written by C.D. Alba.
#
#               This script performs sorting of eukaryotic contigs.
#             
#         You can use any terminal to run this script. Ensure that all required software is installed and that all required files are available. 
#
###############################################################################################################################################

#insert SLURM/sbatch variables here if needed

ulimit -s unlimited 

cd /path/to/raw/data &&\ 

module load anaconda/3-2021.11
source activate myxocnda2

EukRep -i G1.contigs.fa -o G1_contigs_EukRep.fa --min 1000 && \
\
EukRep -i G2.contigs.fa -o G2_contigs_EukRep.fa --min 1000 && \
\
EukRep -i G3.contigs.fa -o G3_contigs_EukRep.fa --min 1000
