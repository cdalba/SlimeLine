#!/bin/bash

###############################################################################################################################################
#
#                     This Bash script is written by C.D. Alba.
#
#             This script performs the assembly-based taxonomic profiling. 
#             
#         You can use any terminal to run this script. Ensure that all required software is installed and that all required files are available. 
#
###############################################################################################################################################

#insert SLURM/sbatch variables here if needed

ulimit -s unlimited 

cd /path/to/raw/data &&\ 

module load anaconda/3-2021.11
source activate metaxa

metaxa2 -i 0.fa -o 0_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 1.fa -o 1_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 2.fa -o 2_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 3.fa -o 3_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 4.fa -o 4_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 5.fa -o 5_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 6.fa -o 6_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 7.fa -o 7_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 8.fa -o 8_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 9.fa -o 9_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 10.fa -o 10_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 11.fa -o 11_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 12.fa -o 12_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 13.fa -o 13_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 14.fa -o 14_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 15.fa -o 15_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 16.fa -o 16_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 17.fa -o 17_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 18.fa -o 18_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 19.fa -o 19_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 20.fa -o 20_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 21.fa -o 21_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T && \
\
metaxa2 -i 22.fa -o 22_metaxa2 -t e -f p -g ssu -d blast.fasta --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T
