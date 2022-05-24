#!/bin/bash
#SBATCH --partition=batch
#SBATCH --qos=240c-1h_batch
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=64
#SBATCH --mem=64G
#SBATCH --job-name="Myxo_Guiuan_EukRep"
#SBATCH --output=Myxo_Guiuan_EukRep.%J.out

#SBATCH --error=Myxo_Guiuan_EukRep.%J.err
#SBATCH --mail-user=cdalba@up.edu.ph
#SBATCH --mail-type=ALL

echo "SLURM_JOBID="$SLURM_JOBID
echo "SLURM_JOB_NODELIST"=$SLURM_JOB_NODELIST
echo "SLURM_NNODES"=$SLURM_NNODES
echo "SLURMTMPDIR="$SLURMTMPDIR
echo "working directory="$SLURM_SUBMIT_DIR

ulimit -s unlimited 

cd /scratch1/scratch2/charmaine.alba

module load anaconda/3-2021.11
source activate myxocnda2

EukRep -i G1.contigs.fa -o G1_contigs_EukRep.fa --min 1000 && \
\
EukRep -i G2.contigs.fa -o G2_contigs_EukRep.fa --min 1000 && \
\
EukRep -i G3.contigs.fa -o G3_contigs_EukRep.fa --min 1000