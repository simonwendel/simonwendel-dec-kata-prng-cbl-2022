#!/bin/bash
cobc -x -o bin/randomize randomize.cbl prng.cbl prng-seed.cbl
./bin/randomize $1
