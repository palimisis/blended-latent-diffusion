# edit
sbatch -J $jid "${STDOUT}.out" -e "${STDERR}.err" /home/it21902/blended-latent-diffusion/scripts/job.sh --prompt "a knife" --init_image "image.jpg" --mask "masked_img.jpg"

