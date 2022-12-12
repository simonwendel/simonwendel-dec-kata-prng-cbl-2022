#!/bin/bash
cobc -x -o bin/testfx-eq-tests testfx-eq-tests.cbl testfx-eq.cbl
./bin/testfx-eq-tests

cobc -x -o bin/testfx-rpt-tests testfx-rpt-tests.cbl testfx-rpt.cbl
./bin/testfx-rpt-tests