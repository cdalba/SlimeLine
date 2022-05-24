#!/bin/bash
#SBATCH --partition=debug
#SBATCH --qos=240c-1h_debug
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=64
#SBATCH --mem=64G
#SBATCH --job-name="G1_Metaxa_TTT"
#SBATCH --output=G1_Metaxa_TTT.%J.out

#SBATCH --error=G1_Metaxa_TTT.%J.err
#SBATCH --mail-user=cdalba@up.edu.ph
#SBATCH --mail-type=ALL

echo "SLURM_JOBID="$SLURM_JOBID
echo "SLURM_JOB_NODELIST"=$SLURM_JOB_NODELIST
echo "SLURM_NNODES"=$SLURM_NNODES
echo "SLURMTMPDIR="$SLURMTMPDIR
echo "working directory="$SLURM_SUBMIT_DIR

ulimit -s unlimited 

cd /scratch3/charmaine.alba

module load anaconda/3-2021.11
source activate metaxa

metaxa2_ttt -i G1_metaxa2.taxonomy.txt -o G1_metaxa2_ttt_output -t e -l 0