#!/usr/local_rwth/bin/zsh
 
### #SBATCH directives need to be in the first part of the jobscript

# ask for 10 GB memory
#SBATCH --mem-per-cpu=10240M   #M is the default and can therefore be omitted, but could also be K(ilo)|G(iga)|T(era)
 
# name the job
#SBATCH --job-name=SK_JOB_2
 
# declare the merged STDOUT/STDERR file
#SBATCH --output=output.%J.txt

#SBATCH --gres=gpu:volta:1

#--time=d-hh:mm:ss
#SBATCH --time=0-04:00:00

 ### your code goes here, the second part of the jobscript
### begin of executable commands

cd /home/sk246184/0_segmentation_based/new_segmentation
# module load python/3.6.14 cuda/101 gcc/7 cmake
module load python/3.6.14 cuda/10.1 
source ../seg_venv/bin/activate
python3 evaluate.py
 
