#!/bin/bash
# usage:
#   ./eval_gt.sh <absolute path to ldif/> <shape name>

ldif_repo_dirpath="$1"
shape_name="$2"

# define paths and experiment name
dataset_absdirpath=$(echo "$ldif_repo_dirpath/dataset_GT_not-wt_$shape_name/")
experiment_name=$(echo "GT_not-wt_$shape_name")
result_dirpath=$(echo "results_$experiment_name")

python eval.py --dataset_directory $dataset_absdirpath --experiment_name $experiment_name --split test --save_results --save_meshes --save_ldifs --result_directory $result_dirpath