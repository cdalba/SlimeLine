#!/bin/bash
#SBATCH --partition=debug
#SBATCH --qos=240c-1h_debug
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem=24G
#SBATCH --job-name="Myxo_Guiuan_Concoct"
#SBATCH --output=Myxo_Guiuan_Concoct.%J.out

#SBATCH --error=Myxo_Guiuan_Concoct.%J.err
#SBATCH --mail-user=cdalba@up.edu.ph
#SBATCH --mail-type=ALL

echo "SLURM_JOBID="$SLURM_JOBID
echo "SLURM_JOB_NODELIST"=$SLURM_JOB_NODELIST
echo "SLURM_NNODES"=$SLURM_NNODES
echo "SLURMTMPDIR="$SLURMTMPDIR
echo "working directory="$SLURM_SUBMIT_DIR

ulimit -s unlimited 

cd /scratch1/scratch2/charmaine.alba

mkdir G1_output_concoct/bins_concoct
mkdir G2_output_concoct/bins_concoct
mkdir G3_output_concoct/bins_concoct

module load anaconda/3-2021.11
source activate myxocnda1

cut_up_fasta.py G1_contigs_EukRep.fa -c 10000000 -o 0 --merge_last -b G1_contigs_concoct.bed > G1_contigs_concoct.fa && \
\
cut_up_fasta.py G2_contigs_EukRep.fa -c 10000000 -o 0 --merge_last -b G2_contigs_concoct.bed > G2_contigs_concoct.fa && \
\
cut_up_fasta.py G3_contigs_EukRep.fa -c 10000000 -o 0 --merge_last -b G3_contigs_concoct.bed > G3_contigs_concoct.fa && \
\
concoct_coverage_table.py G1_contigs_concoct.bed mapping/Sample*.sorted.bam > G1_coverage_concoct.tsv && \
\
concoct_coverage_table.py G2_contigs_concoct.bed mapping/Sample*.sorted.bam > G2_coverage_concoct.tsv && \
\
concoct_coverage_table.py G3_contigs_concoct.bed mapping/Sample*.sorted.bam > G3_coverage_concoct.tsv && \
\
concoct --coverage_file G1_coverage_concoct.tsv --composition_file G1_contigs_concoct.fa -b G1_output_concoct/ && \
\
concoct --coverage_file G2_coverage_concoct.tsv --composition_file G2_contigs_concoct.fa -b G2_output_concoct/ && \
\
concoct --coverage_file G3_coverage_concoct.tsv --composition_file G3_contigs_concoct.fa -b G3_output_concoct/ && \
\
merge_cutup_clustering.py G1_output_concoct/clustering.csv > G1_output_concoct/clustering_merged.csv && \
\
merge_cutup_clustering.py G2_output_concoct/clustering.csv > G2_output_concoct/clustering_merged.csv && \
\
merge_cutup_clustering.py G3_output_concoct/clustering.csv > G3_output_concoct/clustering_merged.csv && \
\
extract_fasta_bins.py contigs.fa G1_output_concoct/clustering_merged.csv --output_path G1_output_concoct/bins_concoct && \
\
extract_fasta_bins.py contigs.fa G2_output_concoct/clustering_merged.csv --output_path G2_output_concoct/bins_concoct && \
\
extract_fasta_bins.py contigs.fa G3_output_concoct/clustering_merged.csv --output_path G3_output_concoct/bins_concoct
