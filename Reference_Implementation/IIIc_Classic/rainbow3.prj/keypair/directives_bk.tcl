############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_allocation -limit 1 -type function "sha256_update" sha256_update
set_directive_inline "sha256_update"
set_directive_allocation -limit 1 -type function "sha256_final" sha256_final
set_directive_inline "sha256_final"
set_directive_allocation -limit 1 -type function "hash_msg" hash_msg
set_directive_inline "hash_msg"
set_directive_unroll -factor 128 "gf256mat_prod_ref/gf256mat_prod_ref_label19"
set_directive_pipeline "gf256mat_prod_ref/gf256mat_prod_ref_label19"
set_directive_unroll -factor 128 "_gf256v_add_u32/_gf256v_add_u32_label20"
set_directive_pipeline "_gf256v_add_u32/_gf256v_add_u32_label20"
set_directive_unroll -factor 128 "_gf256v_add_u32/_gf256v_add_u32_label21"
set_directive_pipeline "_gf256v_add_u32/_gf256v_add_u32_label21"
set_directive_unroll -factor 128 "generate_keypair/generate_keypair_label0"
set_directive_pipeline "generate_keypair/generate_keypair_label0"
set_directive_unroll -factor 128 "generate_keypair/generate_keypair_label1"
set_directive_pipeline "generate_keypair/generate_keypair_label1"
set_directive_unroll -factor 128 "generate_keypair/generate_keypair_label2"
set_directive_pipeline "generate_keypair/generate_keypair_label2"