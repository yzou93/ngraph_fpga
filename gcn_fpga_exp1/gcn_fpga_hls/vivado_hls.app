<project xmlns="com.autoesl.autopilot.project" name="gcn_fpga_hls" top="top">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="2" lastCsimMode="2" compiler="true"/>
    </Simulation>
    <files xmlns="">
        <file name="../src/top_tb.cpp" sc="0" tb="1" cflags=" "/>
        <file name="gcn_fpga_hls/src/top.cpp" sc="0" tb="false" cflags=""/>
        <file name="gcn_fpga_hls/src/mat_mult.cpp" sc="0" tb="false" cflags=""/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

