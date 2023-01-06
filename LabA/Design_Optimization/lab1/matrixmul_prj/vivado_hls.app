<project xmlns="com.autoesl.autopilot.project" name="matrixmul_prj" top="matrixmul">
    <includePaths/>
    <libraryPaths/>
    <libraryFlag/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" mflags=""/>
    </Simulation>
    <files xmlns="">
        <file name="../../matrixmul_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="matrixmul.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="inactive"/>
        <solution name="solution2" status="inactive"/>
        <solution name="solution3" status="inactive"/>
        <solution name="solution4" status="active"/>
        <solution name="solution4_cyclic" status="inactive"/>
        <solution name="solution4_block" status="inactive"/>
        <solution name="solution5" status="inactive"/>
        <solution name="solution6" status="inactive"/>
    </solutions>
</project>

