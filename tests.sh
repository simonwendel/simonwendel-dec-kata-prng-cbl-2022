#!/bin/bash
cobc -x -o bin/testfx-eq-tests testfx-eq-tests.cbl testfx-eq.cbl
./bin/testfx-eq-tests