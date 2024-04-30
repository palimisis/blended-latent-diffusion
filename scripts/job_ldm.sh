#!/bin/bash 
#SBATCH --partition=leia
#SBATCH --ntasks 1
#SBATCH --gres=gpu:1
#SBATCH --time=03:00:00

set -e
# Activate Anaconda work environment 
# source /home/$USER/minicoda3/etc/profile.d/conda.sh
source ~/miniconda3/etc/profile.d/conda.sh
conda init bash
conda activate blended-ldm


python3 /home/it21902/blended-latent-diffusion/scripts/text_editing_LDM.py --prompt "a knife" --init_image "image.jpg" --mask "masked_img.jpg"

