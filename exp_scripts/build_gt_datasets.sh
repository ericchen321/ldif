#!/bin/bash
# usage:
#   ./build_gt_datasets.sh <absolute path to ldif/>

ldif_repo_dirpath="$1"

# define shape names
declare -a shape_names=(
    "airplane"
    "armadillo"
    "asian_dragon"
    "beard_man"
    "bimba"
    "camera"
    "david"
    "dragon"
    "dragon_warrior"
    "thai_statue")

# create ply directories
ply_raw_dirpath=$(echo "ply_files_GT/raw/")
(set -x; mkdir -p $ply_raw_dirpath)
ply_wt_dirpath=$(echo "ply_files_GT/wt/")
(set -x; mkdir -p $ply_wt_dirpath)

for shape_name in ${shape_names[@]}; do
    # for each shape

    # convert obj to ply format
    obj_filepath=$(echo "obj_files_GT/$shape_name.obj")
    ply_raw_filepath=$(echo "$ply_raw_dirpath/$shape_name.ply")
    (set -x; python obj2ply.py $obj_filepath $ply_raw_filepath)

    # convert to watertight mesh
    ply_wt_filepath=$(echo "$ply_wt_dirpath/$shape_name.ply")
    (set -x; ./ldif/gaps/bin/x86_64/msh2df $ply_raw_filepath tmp.grd -estimate_sign -spacing 0.002 -v)
    (set -x; ./ldif/gaps/bin/x86_64/grd2msh tmp.grd $ply_wt_filepath)
    (set -x; rm tmp.grd)

    # create mesh directories with train/test split
    mesh_dirpath=$(echo "meshes_GT_$shape_name/")
    mesh_train_dirpath=$(echo "$mesh_dirpath/train/$shape_name/")
    mesh_test_dirpath=$(echo "$mesh_dirpath/test/$shape_name/")
    (set -x; mkdir -p $mesh_train_dirpath)
    (set -x; mkdir -p $mesh_test_dirpath)
    mesh_train_filepath=$(echo "$mesh_train_dirpath/$shape_name.ply")
    mesh_test_filepath=$(echo "$mesh_test_dirpath/$shape_name.ply")
    (set -x; cp $ply_wt_filepath $mesh_train_filepath)
    (set -x; cp $ply_wt_filepath $mesh_test_filepath)

    # generate the dataset
    mesh_absdirpath=$(echo "$ldif_repo_dirpath/$mesh_dirpath")
    dataset_absdirpath=$(echo "$ldif_repo_dirpath/dataset_GT_$shape_name/")
    python meshes2dataset.py --mesh_directory $mesh_absdirpath --dataset_directory $dataset_absdirpath 
done