############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project rainbow5.prj
set_top crypto_sign_open
add_files utils_prng.c
add_files utils_hash.c
add_files utils.c
add_files sign.c
add_files rng.c
add_files rainbow_keypair_computation.c
add_files rainbow_keypair.c
add_files rainbow.c
add_files parallel_matrix_op.c
add_files fips202.c
add_files blas_comm.c
add_files aes.c
add_files -tb PQCgenKAT_sign.c -cflags "-Wno-unknown-pragmas"
open_solution "temp"
set_part {xc7a200tfbg676-2}
create_clock -period 10 -name default
config_interface  -expose_global  -m_axi_offset off -register_io off 
source "./rainbow5.prj/temp/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog