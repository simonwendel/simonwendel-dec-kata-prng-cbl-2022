#!/bin/bash
cobc -x -o bin/testfx-eq-tests testfx-eq-tests.cbl testfx-eq.cbl
./bin/testfx-eq-tests

cobc -x -o bin/testfx-rpt-tests testfx-rpt-tests.cbl testfx-rpt.cbl
./bin/testfx-rpt-tests

cobc -x -o bin/prng-tests prng-tests.cbl prng.cbl testfx-eq.cbl testfx-rpt.cbl
./bin/prng-tests