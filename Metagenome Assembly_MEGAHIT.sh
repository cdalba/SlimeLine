#!/bin/bash

###############################################################################################################################################
#
#                     This Bash script is written by C.D. Alba.
#
#             This script performs the metagenome assembly step for the assembly-based method. 
#             
#         You can use any terminal to run this script. Ensure that all required software is installed and that all required files are available. 
#
###############################################################################################################################################

#insert SLURM/sbatch variables here if needed

ulimit -s unlimited 

cd /path/to/raw/data &&\ 

module load anaconda/3-2021.11
source activate myxocnda

megahit --presets meta-large -1 "G1_R1_trimmed.fq.gz" -2 "G1_R2_trimmed.fq.gz" --num-cpu-threads 64 -m 64 -o assemblyG1
