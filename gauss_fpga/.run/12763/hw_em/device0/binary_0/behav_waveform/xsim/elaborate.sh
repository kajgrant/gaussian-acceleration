#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Thu Nov 23 11:42:51 PST 2023
# SW Build 3118627 on Tue Feb  9 05:13:49 MST 2021
#
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
xv_lib_path="/cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/lib/lnx64.o/Ubuntu/18:/cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/lib/lnx64.o/Ubuntu:/cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/lib/lnx64.o"
[ -z "$LIBRARY_PATH" ] && export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu || export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:$LIBRARY_PATH
set -Eeuo pipefail

xv_cxl_lib_path="/cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/data/xsim"
xv_cpt_lib_path="/cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/data/simmodels/xsim/2020.2/lnx64/6.2.0/systemc/protected"
xv_ext_lib_path="/cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/data/simmodels/xsim/2020.2/lnx64/6.2.0/ext"
xv_boost_lib_path="/cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/tps/boost_1_64_0"

# link design libraries
echo "xsc --shared --gcc_link_options "-L/cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/data/simmodels/xsim/2020.2/lnx64/6.2.0/ext/protobuf/ -lprotobuf" -lib xil_defaultlib -gcc_link_options "-L$xv_ext_lib_path/protobuf -lprotobuf" -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm -lxtlm" -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0 -lxtlm_simple_interconnect_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/common_cpp_v1_0 -lcommon_cpp_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/emu_perf_common_v1_0 -lemu_perf_common_v1_0" -o libdpi.so"
xsc --shared --gcc_link_options "-L/cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/data/simmodels/xsim/2020.2/lnx64/6.2.0/ext/protobuf/ -lprotobuf" -lib xil_defaultlib -gcc_link_options "-L$xv_ext_lib_path/protobuf -lprotobuf" -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm -lxtlm" -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0 -lxtlm_simple_interconnect_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/common_cpp_v1_0 -lcommon_cpp_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/emu_perf_common_v1_0 -lemu_perf_common_v1_0" -o libdpi.so

# elaborate design
echo "xelab -wto 439511f124204fb68722fcd63a6759c9 --incr --debug typical --relax --mt 8 -sv_root "$xv_ext_lib_path/protobuf" -sc_lib libprotobuf.so --include "$xv_ext_lib_path/protobuf/include" -sv_root "$xv_cxl_lib_path/ip/xtlm" -sc_lib libxtlm.so --include "$xv_cxl_lib_path/ip/xtlm/include" -sv_root "$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0" -sc_lib libxtlm_simple_interconnect_v1_0.so --include "$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/common_cpp_v1_0" -sc_lib libcommon_cpp_v1_0.so --include "$xv_cxl_lib_path/ip/common_cpp_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/emu_perf_common_v1_0" -sc_lib libemu_perf_common_v1_0.so --include "$xv_cxl_lib_path/ip/emu_perf_common_v1_0/include" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_embedded_scheduler_sw_0_0/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_embedded_scheduler_sw_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/common" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/cpp_src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/sysc_src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_xtlm_simple_intercon_0_0/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_xtlm_simple_intercon_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_0/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_1/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_1/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_2/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_2/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_3/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_3/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_4/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_4/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_0/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_1/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_1/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_2/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_2/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_3/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_3/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_4/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_4/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_5/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_5/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_6/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_6/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_7/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_7/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_8/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_8/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_9/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_9/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_10/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_10/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_11/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_11/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_12/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_12/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_13/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_13/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_14/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_14/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_15/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_15/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_16/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_16/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_17/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_17/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_18/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_18/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_19/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_19/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_20/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_20/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_21/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_21/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_22/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_22/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_23/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_23/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_24/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_24/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_25/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_25/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_26/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_26/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_27/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_27/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_28/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_28/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_29/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_29/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_30/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_30/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_31/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_31/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_32/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_32/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_33/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_33/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_34/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_34/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_35/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_35/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_36/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_36/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_37/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_37/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_38/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_38/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_39/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_39/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_40/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_40/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_41/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_41/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_42/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_42/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_43/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_43/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_44/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_44/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_45/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_45/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_46/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_46/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_47/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_47/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_48/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_48/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_49/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_49/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_50/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_50/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_51/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_51/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_52/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_52/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_53/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_53/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_54/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_54/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_55/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_55/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_56/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_56/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_57/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_57/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_58/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_58/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_59/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_59/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_60/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_60/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_61/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_61/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_62/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_62/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_63/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_63/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_64/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_64/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_65/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_65/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_66/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_66/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_dpa_hub_0/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_dpa_hub_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_dpa_mon0_0/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_dpa_mon0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/sim" --include "$xv_boost_lib_path" -L xil_defaultlib -L sim_clk_gen_v1_0_2 -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_15 -L xlconcat_v2_1_4 -L xlconstant_v1_1_7 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_24 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_22 -L fifo_generator_v13_2_5 -L axi_data_fifo_v2_1_21 -L axi_crossbar_v2_1_23 -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_16 -L floating_point_v7_1_11 -L axi_protocol_converter_v2_1_22 -L axi_clock_converter_v2_1_21 -L uvm -L unisims_ver -L unimacro_ver -L secureip -L xpm -sv_root "." -sc_lib libdpi.so --snapshot emu_wrapper_behav xil_defaultlib.emu_wrapper xil_defaultlib.glbl -log elaborate.log  --include /cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/data/simmodels/xsim/2020.2/lnx64/6.2.0/ext/protobuf/include   -ignore_assertions  --debug sc"
xelab -wto 439511f124204fb68722fcd63a6759c9 --incr --debug typical --relax --mt 8 -sv_root "$xv_ext_lib_path/protobuf" -sc_lib libprotobuf.so --include "$xv_ext_lib_path/protobuf/include" -sv_root "$xv_cxl_lib_path/ip/xtlm" -sc_lib libxtlm.so --include "$xv_cxl_lib_path/ip/xtlm/include" -sv_root "$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0" -sc_lib libxtlm_simple_interconnect_v1_0.so --include "$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/common_cpp_v1_0" -sc_lib libcommon_cpp_v1_0.so --include "$xv_cxl_lib_path/ip/common_cpp_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/emu_perf_common_v1_0" -sc_lib libemu_perf_common_v1_0.so --include "$xv_cxl_lib_path/ip/emu_perf_common_v1_0/include" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_embedded_scheduler_sw_0_0/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_embedded_scheduler_sw_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/common" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/cpp_src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/sysc_src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_xtlm_simple_intercon_0_0/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_xtlm_simple_intercon_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_0/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_1/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_1/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_2/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_2/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_3/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_3/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_4/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/ip/ip_4/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/bd_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_memory_subsystem_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_0/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_1/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_1/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_2/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_2/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_3/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_3/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_4/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_4/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_5/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_5/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_6/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_6/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_7/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_7/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_8/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_8/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_9/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_9/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_10/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_10/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_11/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_11/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_12/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_12/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_13/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_13/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_14/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_14/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_15/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_15/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_16/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_16/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_17/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_17/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_18/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_18/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_19/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_19/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_20/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_20/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_21/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_21/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_22/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_22/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_23/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_23/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_24/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_24/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_25/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_25/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_26/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_26/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_27/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_27/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_28/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_28/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_29/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_29/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_30/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_30/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_31/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_31/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_32/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_32/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_33/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_33/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_34/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_34/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_35/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_35/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_36/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_36/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_37/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_37/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_38/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_38/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_39/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_39/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_40/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_40/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_41/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_41/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_42/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_42/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_43/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_43/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_44/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_44/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_45/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_45/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_46/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_46/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_47/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_47/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_48/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_48/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_49/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_49/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_50/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_50/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_51/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_51/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_52/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_52/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_53/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_53/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_54/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_54/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_55/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_55/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_56/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_56/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_57/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_57/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_58/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_58/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_59/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_59/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_60/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_60/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_61/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_61/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_62/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_62/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_63/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_63/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_64/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_64/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_65/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_65/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_66/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/ip/ip_66/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/bd_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_hmss_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_dpa_hub_0/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_dpa_hub_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_dpa_mon0_0/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_dpa_mon0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/sim" --include "$xv_boost_lib_path" -L xil_defaultlib -L sim_clk_gen_v1_0_2 -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_15 -L xlconcat_v2_1_4 -L xlconstant_v1_1_7 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_24 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_22 -L fifo_generator_v13_2_5 -L axi_data_fifo_v2_1_21 -L axi_crossbar_v2_1_23 -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_16 -L floating_point_v7_1_11 -L axi_protocol_converter_v2_1_22 -L axi_clock_converter_v2_1_21 -L uvm -L unisims_ver -L unimacro_ver -L secureip -L xpm -sv_root "." -sc_lib libdpi.so --snapshot emu_wrapper_behav xil_defaultlib.emu_wrapper xil_defaultlib.glbl -log elaborate.log  --include /cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/data/simmodels/xsim/2020.2/lnx64/6.2.0/ext/protobuf/include   -ignore_assertions  --debug sc

