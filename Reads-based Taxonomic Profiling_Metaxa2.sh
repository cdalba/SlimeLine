#!/bin/bash 
#SBATCH --partition=serial 
#SBATCH --qos=84c-1d_serial 
#SBATCH --nodes=1 
#SBATCH --ntasks-per-node=32
#SBATCH --mem=120G
#SBATCH --job-name="Myxo_G1_Reads-based"
#SBATCH --output=G1_Reads-based.%J.out

#SBATCH --error=G1_Reads-based.%J.err
#SBATCH --mail-user=cdalba@up.edu.ph
#SBATCH --mail-type=ALL

echo "SLURM_JOBID="$SLURM_JOBID
echo "SLURM_JOB_NODELIST"=$SLURM_JOB_NODELIST
echo "SLURM_NNODES"=$SLURM_NNODES
echo "SLURMTMPDIR="$SLURMTMPDIR
echo "working directory="$SLURM_SUBMIT_DIR

ulimit -s unlimited 

cd /scratch3/charmaine.alba/Stuff

module load anaconda/3-2021.11
source activate metaxa

metaxa2 -1 G1_R1_trimmed.fq -2 G1_R2_trimmed.fq -o G1_metaxa2 -t e -f p -g ssu --mode m --plus T --blast_eval 1e-5 --cpu 1 --table T --not_found T --save_raw T