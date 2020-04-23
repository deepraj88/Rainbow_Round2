############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_allocation -limit 1 -type function "sha256_transform" sha256_transform
set_directive_inline "sha256_transform"
set_directive_unroll -factor 2 "sha256_update/sha256_update_label3"
set_directive_pipeline "sha256_update/sha256_update_label3"
set_directive_unroll -factor 2 "sha256_final/sha256_final_label6"
set_directive_pipeline "sha256_final/sha256_final_label6"
set_directive_unroll -factor 2 "sha256_final/sha256_final_label7"
set_directive_pipeline "sha256_final/sha256_final_label7"
set_directive_unroll -factor 2 "sha256_final/sha256_final_label8"
set_directive_pipeline "sha256_final/sha256_final_label8"
set_directive_unroll -factor 2 "sha256_final/sha256_final_label4"
set_directive_pipeline "sha256_final/sha256_final_label4"
set_directive_unroll -factor 2 "expand_hash/expand_hash_label9"
set_directive_pipeline "expand_hash/expand_hash_label9"
set_directive_unroll -factor 2 "expand_hash/expand_hash_label10"
set_directive_pipeline "expand_hash/expand_hash_label10"
set_directive_unroll -factor 2 "expand_hash/expand_hash_label5"
set_directive_pipeline "expand_hash/expand_hash_label5"
