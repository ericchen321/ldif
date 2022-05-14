#!/bin/bash
# usage:
#   ./train_gt_norm.sh <absolute path to ldif/> <shape name> <batch_size> <num steps>

ldif_repo_dirpath="$1"
shape_name="$2"
batch_size="$3"
num_steps="$4"

# define paths and experiment name
dataset_absdirpath=$(echo "$ldif_repo_dirpath/dataset_$shape_name/")
experiment_name=$(echo "$shape_name")

python train.py \
--dataset_directory $dataset_absdirpath \
--experiment_name $experiment_name \
--model_type ldif \
--batch_size $batch_size \
--train_step_count $num_steps \
--checkpoint_interval 500000