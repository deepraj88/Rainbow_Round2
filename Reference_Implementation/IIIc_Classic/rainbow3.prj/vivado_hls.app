<project xmlns="com.autoesl.autopilot.project" name="rainbow3.prj" top="crypto_sign_keypair">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow askAgain="false" name="csim" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <files xmlns="">
        <file name="../../PQCgenKAT_sign.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"/>
        <file name="utils_prng.c" sc="0" tb="false" cflags=""/>
        <file name="utils_hash.c" sc="0" tb="false" cflags=""/>
        <file name="sign.c" sc="0" tb="false" cflags=""/>
        <file name="rng.c" sc="0" tb="false" cflags=""/>
        <file name="rainbow_keypair_computation.c" sc="0" tb="false" cflags=""/>
        <file name="rainbow_keypair.c" sc="0" tb="false" cflags=""/>
        <file name="rainbow.c" sc="0" tb="false" cflags=""/>
        <file name="parallel_matrix_op.c" sc="0" tb="false" cflags=""/>
        <file name="fips202.c" sc="0" tb="false" cflags=""/>
        <file name="blas_comm.c" sc="0" tb="false" cflags=""/>
        <file name="aes.c" sc="0" tb="false" cflags=""/>
    </files>
    <solutions xmlns="">
        <solution name="sign_open" status="inactive"/>
        <solution name="sign" status="inactive"/>
        <solution name="keypair" status="active"/>
    </solutions>
</project>

