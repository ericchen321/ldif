#!/bin/bash

ldif_repo_dirpath="$1"
resolution="$2"

./exp_scripts/eval_gt_norm.sh $ldif_repo_dirpath airplane $resolution
./exp_scripts/eval_gt_norm.sh $ldif_repo_dirpath armadillo $resolution
./exp_scripts/eval_gt_norm.sh $ldif_repo_dirpath asian_dragon $resolution
./exp_scripts/eval_gt_norm.sh $ldif_repo_dirpath beard_man $resolution
./exp_scripts/eval_gt_norm.sh $ldif_repo_dirpath bimba $resolution
./exp_scripts/eval_gt_norm.sh $ldif_repo_dirpath camera $resolution
./exp_scripts/eval_gt_norm.sh $ldif_repo_dirpath david $resolution
