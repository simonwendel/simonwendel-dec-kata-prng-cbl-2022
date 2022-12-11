#!/bin/bash
cobc -x -o bin/assert-eq-tests assert-eq-tests.cbl assert-eq.cbl
./bin/assert-eq-tests