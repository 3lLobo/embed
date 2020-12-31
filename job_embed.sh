#!/bin/bash
# Job requirements:
#SBATCH -N 1
#SBATCH -t 6:11:00
#SBATCH -p gpu_titanrtx_shared
#SBATCH --gres=gpu:1
# Loading modules
module purge
module load 2019
module load Python/3.6.6-foss-2019b
module load CUDA/10.1.243
module load cuDNN/7.6.5.32-CUDA-10.1.243
source $HOME/.bashrc
ENV='ths'
PYTHON=~/miniconda3/envs/${ENV}/bin/python
PIP=~/miniconda3/envs/${ENV}/bin/pip
export PATH_TO_SOURCE=embed
# Copy input data from home to scratch
cp -R $HOME/$PATH_TO_SOURCE $TMPDIR
cd $TMPDIR/rembed
timeout 6h $PYTHON -u experiments/lp_distmult_fb.py -F --vae --elbo
