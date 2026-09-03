#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sten/Uni/HardwareArchitecturesforAI/Lab7/mlp_FP/sol_fp_10/.autopilot/db/a.g.bc ${1+"$@"}
