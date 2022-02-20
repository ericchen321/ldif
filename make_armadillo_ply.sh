#!/bin/bash

./ldif/gaps/bin/x86_64/msh2msh sample_meshes/armadillo.obj sample_meshes/armadillo_in.ply
./ldif/gaps/bin/x86_64/msh2df sample_meshes/armadillo_in.ply sample_meshes/armadillo.grd -estimate_sign -spacing 0.002 -v
./ldif/gaps/bin/x86_64/grd2msh sample_meshes/armadillo.grd sample_meshes/armadillo_out.ply
rm sample_meshes/armadillo.grd