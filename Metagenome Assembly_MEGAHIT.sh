#!/bin/bash
#SBATCH --partition=batch
#SBATCH --qos=240c-1h_batch
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=64
#SBATCH --mem=64G
#SBATCH --job-name="Myxo_G1_MEGAHIT"
#SBATCH --output=Myxo_G1_MEGAHIT.%J.out

#SBATCH --error=Myxo_G1_MEGAHIT.%J.err
#SBATCH --mail-user=cdalba@up.edu.ph
#SBATCH --mail-type=ALL

echo "SLURM_JOBID="$SLURM_JOBID
echo "SLURM_JOB_NODELIST"=$SLURM_JOB_NODELIST
echo "SLURM_NNODES"=$SLURM_NNODES
echo "SLURMTMPDIR="$SLURMTMPDIR
echo "working directory="$SLURM_SUBMIT_DIR

ulimit -s unlimited 

cd /scratch1/charmaine.alba/G1

module load anaconda/3-2021.11
source activate myxocnda

megahit --presets meta-large -1 "G1_R1_trimmed.fq.gz" -2 "G1_R2_trimmed.fq.gz" --num-cpu-threads 64 -m 64 -o assemblyG1