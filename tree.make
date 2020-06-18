## ================================================================
## NVDLA Open Source Project
## 
## Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
## NVDLA Open Hardware License; Check LICENSE which comes with     
## this distribution for more information. 
## ================================================================


##======================= 										  
## Project Name Setup, multiple projects supported			  	  
##======================= 										  
PROJECTS := nv_sochub
  																  
##======================= 										  
##Linux Environment Setup 										  
##======================= 										  
  																  
USE_DESIGNWARE      := 1
DESIGNWARE_DIR      := /home/tools/synopsys/syn_2011.09/dw/sim_ver
CPP      := /usr/bin/cpp
GCC      := /usr/bin/gcc
CXX      := /usr/bin/g++
PERL     := /usr/bin/perl
JAVA     := /usr/bin/java
SYSTEMC  := /opt/mentor/questa/questasim/include/systemc
PYTHON   := /usr/bin/python3
VERDI_HOME := /home/tools/debussy/verdi3_2016.06-SP2-9
NOVAS_HOME := /home/tools/debussy/verdi3_2016.06-SP2-9
VCS_HOME   := /home/tools/vcs/mx-2016.06-SP2-4
CLANG      := /opt/rh/llvm-toolset-7/root/usr/bin/clang

VERILATOR  := verilator
