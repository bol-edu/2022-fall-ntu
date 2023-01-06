<project xmlns="com.autoesl.autopilot.project" name="BlockMatrix_multiplication" top="blockmatmul">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim"/>
    </Simulation>
    <files xmlns="">
        <file name="../../matrixmultiplication.gold.dat" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../BlockBatrix_testbench.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="BlockMatrix_design.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="BlockMatrix_design.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution2" status="inactive"/>
        <solution name="solution3" status="inactive"/>
        <solution name="solution1" status="inactive"/>
        <solution name="solution4" status="active"/>
    </solutions>
</project>

