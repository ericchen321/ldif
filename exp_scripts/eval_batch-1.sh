#!/bin/bash

ldif_repo_dirpath="$1"
resolution="$2"

./exp_scripts/eval_gt_norm.sh $ldif_repo_dirpath dragon $resolution
./exp_scripts/eval_gt_norm.sh $ldif_repo_dirpath dragon_warrior $resolution
./exp_scripts/eval_gt_norm.sh $ldif_repo_dirpath engine $resolution
./exp_scripts/eval_gt_norm.sh $ldif_repo_dirpath guangong $resolution
./exp_scripts/eval_gt_norm.sh $ldif_repo_dirpath lion $resolution
./exp_scripts/eval_gt_norm.sh $ldif_repo_dirpath thai_statue $resolution
