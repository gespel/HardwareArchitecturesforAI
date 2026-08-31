#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sten/Uni/HardwareArchitecturesforAI/Lab4/neuron_FxP/solution1/.autopilot/db/a.g.bc ${1+"$@"}
