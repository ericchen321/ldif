# Author: Zhijie, Guanxiong
# Convert .obj mesh to .ply mesh
# Usage:
#   python obj2ply.py <.obj path> <.ply path>

import trimesh
import sys


obj_path = sys.argv[1]
mesh = trimesh.load(obj_path)

out_path = sys.argv[2]
mesh.export(out_path)
