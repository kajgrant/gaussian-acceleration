#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Fri Nov 24 14:54:56 PST 2023
# SW Build 3118627 on Tue Feb  9 05:13:49 MST 2021
#
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
[ -z "$LIBRARY_PATH" ] && export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu || export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:$LIBRARY_PATH
set -Eeuo pipefail

xv_cxl_lib_path="/cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/data/xsim"
export xv_cpt_lib_path="/cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/data/simmodels/xsim/2020.2/lnx64/6.2.0/systemc/protected"
xv_ext_lib_path="/cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/data/simmodels/xsim/2020.2/lnx64/6.2.0/ext"
xv_lib_path="/cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/lib/lnx64.o/Ubuntu/18:/cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/lib/lnx64.o/Ubuntu:/cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2/lib/lnx64.o"

xv_ref_path=${VIVADO_LOC:-"/cvmfs/rcg.sfu.ca/sw/env/neutral/x86_64/TOOLS/XILINX/V2020.2/Vivado/2020.2"}
xv_lib_path="$xv_ref_path/lib/lnx64.o/Default:$xv_ref_path/lib/lnx64.o"

export LD_LIBRARY_PATH=$PWD:$xv_lib_path:$xv_ref_path/data/simmodels/xsim/2020.2/lnx64/6.2.0/ext/protobuf:$xv_ref_path/data/xsim/ip/xtlm:$xv_ref_path/data/xsim/ip/xtlm_simple_interconnect_v1_0:$xv_ref_path/data/xsim/ip/common_cpp_v1_0:$xv_ref_path/data/xsim/ip/emu_perf_common_v1_0:$LD_LIBRARY_PATH

# simulate design
echo "xsim emu_wrapper_behav -key {Behavioral:sim_1:Functional:emu_wrapper} -tclbatch emu_wrapper.tcl -protoinst "protoinst_files/bd_3a93.protoinst" -protoinst "protoinst_files/bd_9678.protoinst" -protoinst "protoinst_files/emu.protoinst" -log simulate.log $*"
xsim emu_wrapper_behav -key {Behavioral:sim_1:Functional:emu_wrapper} -tclbatch emu_wrapper.tcl -protoinst "protoinst_files/bd_3a93.protoinst" -protoinst "protoinst_files/bd_9678.protoinst" -protoinst "protoinst_files/emu.protoinst" -log simulate.log $*

