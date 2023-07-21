#!/usr/bin/bash
#SBATCH --job-name=transcribe
#SBATCH --output=/home/%u/out/transcribe.%j.out
#SBATCH --error=/home/%u/err/transcribe.%j.err
#SBATCH --time=00:10:00
#SBATCH -p normal
#SBATCH -c 1
#SBATCH --mem=8GB
mkdir /scratch/users/$USER/outputs
python3 /farmshare/learning/scripts/scripts/transcribe/transcribeCorpus.py
