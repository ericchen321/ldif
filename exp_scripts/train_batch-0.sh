#!/bin/bash

ldif_repo_dirpath="$1"
num_steps="$2"

./exp_scripts/train_gt_norm.sh $ldif_repo_dirpath airplane $num_steps
./exp_scripts/train_gt_norm.sh $ldif_repo_dirpath armadillo $num_steps
./exp_scripts/train_gt_norm.sh $ldif_repo_dirpath asian_dragon $num_steps
./exp_scripts/train_gt_norm.sh $ldif_repo_dirpath beard_man $num_steps
./exp_scripts/train_gt_norm.sh $ldif_repo_dirpath bimba $num_steps
./exp_scripts/train_gt_norm.sh $ldif_repo_dirpath camera $num_steps
./exp_scripts/train_gt_norm.sh $ldif_repo_dirpath david $num_steps
