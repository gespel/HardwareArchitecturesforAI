#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sten/vivado/Vivado/2019.1/neuron_FP/solution1/.autopilot/db/a.g.bc ${1+"$@"}
