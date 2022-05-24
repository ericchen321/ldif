#!/bin/bash

ldif_repo_dirpath="$1"
num_steps="$2"

./exp_scripts/train_gt_norm.sh /home/eric/cpsc533r/project/ldif/ dragon 100001
./exp_scripts/train_gt_norm.sh /home/eric/cpsc533r/project/ldif/ dragon_warrior 100001
./exp_scripts/train_gt_norm.sh /home/eric/cpsc533r/project/ldif/ engine 100001
./exp_scripts/train_gt_norm.sh /home/eric/cpsc533r/project/ldif/ guangong 100001
./exp_scripts/train_gt_norm.sh /home/eric/cpsc533r/project/ldif/ lion 100001
./exp_scripts/train_gt_norm.sh /home/eric/cpsc533r/project/ldif/ thai_statue 100001
