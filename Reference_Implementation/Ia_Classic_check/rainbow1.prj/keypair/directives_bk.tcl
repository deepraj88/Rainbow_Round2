############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_allocation -limit 1 -type function "sha256_final" sha256_final
set_directive_inline "sha256_final"
set_directive_allocation -limit 1 -type function "hash_msg" hash_msg
set_directive_allocation -limit 1 -type function "_hash" _hash
set_directive_inline "hash_msg"
set_directive_allocation -limit 1 -type function "sha256_update" sha256_update
set_directive_inline "sha256_update"
set_directive_unroll -factor 128 "generate_keypair/generate_keypair_label24"
set_directive_pipeline "generate_keypair/generate_keypair_label24"
set_directive_unroll -factor 128 "generate_keypair/generate_keypair_label25"
set_directive_pipeline "generate_keypair/generate_keypair_label25"
set_directive_unroll -factor 128 "generate_keypair/generate_keypair_label26"
set_directive_pipeline "generate_keypair/generate_keypair_label26"
set_directive_unroll -factor 128 "generate_keypair/generate_keypair_label27"
set_directive_pipeline "generate_keypair/generate_keypair_label27"
set_directive_unroll -factor 128 "generate_keypair/generate_keypair_label28"
set_directive_pipeline "generate_keypair/generate_keypair_label28"
set_directive_unroll -factor 128 "generate_keypair/generate_keypair_label29"
set_directive_pipeline "generate_keypair/generate_keypair_label29"
set_directive_unroll -factor 128 "generate_keypair/generate_keypair_label30"
set_directive_pipeline "generate_keypair/generate_keypair_label30"
set_directive_unroll -factor 128 "generate_keypair/generate_keypair_label31"
set_directive_pipeline "generate_keypair/generate_keypair_label31"
set_directive_unroll -factor 128 "generate_keypair/generate_keypair_label32"
set_directive_pipeline "generate_keypair/generate_keypair_label32"
set_directive_unroll -factor 128 "generate_keypair/generate_keypair_label33"
set_directive_pipeline "generate_keypair/generate_keypair_label33"
set_directive_unroll -factor 128 "generate_keypair/generate_keypair_label34"
set_directive_pipeline "generate_keypair/generate_keypair_label34"
set_directive_unroll -factor 128 "generate_keypair/generate_keypair_label35"
set_directive_pipeline "generate_keypair/generate_keypair_label35"
