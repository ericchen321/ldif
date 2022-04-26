#!/bin/bash
# usage:
#   ./train_gt.sh <absolute path to ldif/> <shape name> <num steps>

ldif_repo_dirpath="$1"
shape_name="$2"
num_steps="$3"

# define paths and experiment name
dataset_absdirpath=$(echo "$ldif_repo_dirpath/dataset_GT_norm_$shape_name/")
experiment_name=$(echo "GT_norm_$shape_name")

python train.py --dataset_directory $dataset_absdirpath --experiment_name $experiment_name --model_type ldif --train_step_count $num_steps --checkpoint_interval 500000