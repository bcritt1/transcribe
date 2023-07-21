#!/bin/bash
#SBATCH --job-name=myarrayjob
#SBATCH --output=/home/%u/out/myarray.%j.out
#SBATCH --error=/home/%u/err/myarray.%j.err
#SBATCH -p normal
#SBATCH --ntasks=1 # Run a single task 
#SBATCH --mem-per-cpu=8gb # Memory per processor 
#SBATCH --array=1-2

# load python and set input location
mkdir /scratch/users/$USER/outputs
python3 /farmshare/learning/scripts/scripts/transcribe/parallel_transcribe.py --file "/farmshare/learning/data/audio/${SLURM_ARRAY_TASK_ID}.wav"
