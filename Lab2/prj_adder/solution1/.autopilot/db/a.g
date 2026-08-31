#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sten/Uni/HardwareArchitecturesforAI/Lab2/prj_adder/solution1/.autopilot/db/a.g.bc ${1+"$@"}
