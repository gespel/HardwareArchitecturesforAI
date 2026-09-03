#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sten/Uni/HardwareArchitecturesforAI/Lab7/quantized_mlp/sol_q_7/.autopilot/db/a.g.bc ${1+"$@"}
