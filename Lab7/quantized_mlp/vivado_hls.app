<project xmlns="com.autoesl.autopilot.project" name="quantized_mlp" top="mlp">
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" mflags="" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <includePaths xmlns=""/>
    <libraryFlag xmlns=""/>
    <files xmlns="">
        <file name="../mlp_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="quantized_mlp/mlp.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="quantized_mlp/mlp.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="sol_q_7" status=""/>
    </solutions>
</project>

