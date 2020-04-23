############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_allocation -limit 1 -type function "sha256_transform" sha256_transform
set_directive_inline "sha256_transform"
set_directive_allocation -limit 1 -type function "sha256_final" sha256_final
set_directive_inline "sha256_final"
set_directive_allocation -limit 1 -type function "sha256_update" sha256_update
set_directive_inline "sha256_update"
set_directive_allocation -limit 1 -type function "hash_msg" hash_msg
set_directive_allocation -limit 1 -type function "_hash" _hash
set_directive_allocation -limit 1 -type function "p_hash" p_hash
set_directive_inline "p_hash"
set_directive_inline "hash_msg"
set_directive_allocation -limit 1 -type function "expand_hash" expand_hash
set_directive_inline "expand_hash"
set_directive_unroll -factor 2 "sha256_final/sha256_final_label6"
set_directive_pipeline "sha256_final/sha256_final_label6"
set_directive_unroll -factor 2 "sha256_final/sha256_final_label7"
set_directive_pipeline "sha256_final/sha256_final_label7"
set_directive_unroll -factor 2 "sha256_final/sha256_final_label8"
set_directive_pipeline "sha256_final/sha256_final_label8"
set_directive_unroll -factor 2 "crypto_sign_open/crypto_sign_open_label11"
set_directive_pipeline "crypto_sign_open/crypto_sign_open_label11"
set_directive_unroll -factor 2 "rainbow_verify/rainbow_verify_label12"
set_directive_pipeline "rainbow_verify/rainbow_verify_label12"
set_directive_unroll -factor 2 "rainbow_verify/rainbow_verify_label13"
set_directive_pipeline "rainbow_verify/rainbow_verify_label13"
set_directive_unroll -factor 2 "rainbow_verify/rainbow_verify_label14"
set_directive_pipeline "rainbow_verify/rainbow_verify_label14"
set_directive_unroll -factor 2 "batch_quad_trimat_eval_gf16/batch_quad_trimat_eval_gf16_label15"
set_directive_pipeline "batch_quad_trimat_eval_gf16/batch_quad_trimat_eval_gf16_label15"
