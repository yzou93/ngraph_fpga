#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/yuzou/gcn_fpga_exp1/gcn_fpga_hls/solution1/.autopilot/db/a.g.bc ${1+"$@"}
