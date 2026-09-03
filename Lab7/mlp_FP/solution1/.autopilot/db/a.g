#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sten/Uni/HardwareArchitecturesforAI/Lab7/mlp_FP/solution1/.autopilot/db/a.g.bc ${1+"$@"}
