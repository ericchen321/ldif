#!/bin/bash

ldif_repo_dirpath="$1"
num_steps="$2"

./exp_scripts/train_gt_norm.sh /home/eric/cpsc533r/project/ldif/ airplane 100001
./exp_scripts/train_gt_norm.sh /home/eric/cpsc533r/project/ldif/ armadillo 100001
./exp_scripts/train_gt_norm.sh /home/eric/cpsc533r/project/ldif/ asian_dragon 100001
./exp_scripts/train_gt_norm.sh /home/eric/cpsc533r/project/ldif/ beard_man 100001
./exp_scripts/train_gt_norm.sh /home/eric/cpsc533r/project/ldif/ bimba 100001
./exp_scripts/train_gt_norm.sh /home/eric/cpsc533r/project/ldif/ camera 100001
./exp_scripts/train_gt_norm.sh /home/eric/cpsc533r/project/ldif/ david 100001