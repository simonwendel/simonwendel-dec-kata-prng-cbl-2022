#!/bin/bash

# Randomize - a middle-square generator in COBOL
# Copyright (C) 2022  Simon Wendel
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

cobc -x -o bin/testfx-eq-tests test/testfx-eq-tests.cbl test/testfx-eq.cbl
./bin/testfx-eq-tests

cobc -x -o bin/testfx-rpt-tests test/testfx-rpt-tests.cbl test/testfx-rpt.cbl
./bin/testfx-rpt-tests

cobc -x -o bin/prng-tests test/prng-tests.cbl src/prng.cbl test/testfx-eq.cbl test/testfx-rpt.cbl
./bin/prng-tests
