#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sten/Uni/HardwareArchitecturesforAI/Lab7/pruned_mlp/sol_p_w16_10/.autopilot/db/a.g.bc ${1+"$@"}
