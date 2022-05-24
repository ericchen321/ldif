#!/bin/bash

ldif_repo_dirpath="$1"
num_steps="$2"

./exp_scripts/train_gt_norm.sh $ldif_repo_dirpath dragon $num_steps
./exp_scripts/train_gt_norm.sh $ldif_repo_dirpath dragon_warrior $num_steps
./exp_scripts/train_gt_norm.sh $ldif_repo_dirpath engine $num_steps
./exp_scripts/train_gt_norm.sh $ldif_repo_dirpath guangong $num_steps
./exp_scripts/train_gt_norm.sh $ldif_repo_dirpath lion $num_steps
./exp_scripts/train_gt_norm.sh $ldif_repo_dirpath thai_statue $num_steps
