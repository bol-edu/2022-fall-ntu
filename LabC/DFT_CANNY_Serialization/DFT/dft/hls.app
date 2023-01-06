<project xmlns="com.autoesl.autopilot.project" name="dft" top="dft">
    <includePaths/>
    <libraryPaths/>
    <libraryFlag/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" mflags="" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../dft_test.cpp" sc="0" tb="1" cflags=" -I../.. -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../out.gold.dat" sc="0" tb="1" cflags=" -I../.. -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="coefficients1024.h" sc="0" tb="false" cflags="-I." csimflags="" blackbox="false"/>
        <file name="fft.h" sc="0" tb="false" cflags="-I." csimflags="" blackbox="false"/>
        <file name="fft.cpp" sc="0" tb="false" cflags="-I." csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

