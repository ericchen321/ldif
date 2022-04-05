#!/bin/bash
# usage:
#   ./train_gt.sh <absolute path to ldif/> <shape name>

ldif_repo_dirpath="$1"
shape_name="$2"

# define paths and experiment name
dataset_absdirpath=$(echo "$ldif_repo_dirpath/dataset_GT_$shape_name/")
experiment_name=$(echo "GT_$shape_name")

python train.py --dataset_directory $dataset_absdirpath --experiment_name $experiment_name --model_type ldif