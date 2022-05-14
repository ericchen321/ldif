#!/bin/bash
# usage:
#   ./build_gt_datasets_norm.sh <absolute path to ldif/>

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
    "engine"
    "guangong"
    "lion"
    "thai_statue")

# create ply directories
#ply_raw_dirpath=$(echo "ply_files_GT/unnorm/")
#(set -x; mkdir -p $ply_raw_dirpath)
ply_norm_dirpath=$(echo "/media/cs533r/data_b/normalized_GT_3D_shapes/ply/")
#(set -x; mkdir -p $ply_norm_dirpath)

for shape_name in ${shape_names[@]}; do
    # for each shape

    # convert obj to ply format
    #obj_filepath=$(echo "obj_files_GT/unnorm/$shape_name.obj")
    #ply_raw_filepath=$(echo "$ply_raw_dirpath/${shape_name}_gt_unnorm.ply")
    #(set -x; python obj2ply.py $obj_filepath $ply_raw_filepath)

    # normalize ply mesh
    ply_norm_filepath=$(echo "$ply_norm_dirpath/${shape_name}.ply")
    #(set -x; python metrics/chamfer_distance.py --pred_shape_input $ply_raw_filepath --pred_shape_norm_output $ply_norm_filepath)

    # create mesh directories with train/test split
    mesh_dirpath=$(echo "meshes_$shape_name/")
    mesh_train_dirpath=$(echo "$mesh_dirpath/train/$shape_name/")
    mesh_test_dirpath=$(echo "$mesh_dirpath/test/$shape_name/")
    (set -x; mkdir -p $mesh_train_dirpath)
    (set -x; mkdir -p $mesh_test_dirpath)
    mesh_train_filepath=$(echo "$mesh_train_dirpath/$shape_name.ply")
    mesh_test_filepath=$(echo "$mesh_test_dirpath/$shape_name.ply")
    (set -x; cp $ply_norm_filepath $mesh_train_filepath)
    (set -x; cp $ply_norm_filepath $mesh_test_filepath)

    # generate the dataset
    mesh_absdirpath=$(echo "$ldif_repo_dirpath/$mesh_dirpath")
    dataset_absdirpath=$(echo "$ldif_repo_dirpath/dataset_$shape_name/")
    python meshes2dataset.py --mesh_directory $mesh_absdirpath --dataset_directory $dataset_absdirpath 
done