      * Randomize - a middle-square generator in COBOL
      * Copyright (C) 2022  Simon Wendel
      *
      * This program is free software: you can redistribute it and/or modify
      * it under the terms of the GNU General Public License as published by
      * the Free Software Foundation, either version 3 of the License, or
      * (at your option) any later version.
      *
      * This program is distributed in the hope that it will be useful,
      * but WITHOUT ANY WARRANTY; without even the implied warranty of
      * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
      * GNU General Public License for more details.
      *
      * You should have received a copy of the GNU General Public License
      * along with this program.  If not, see <http://www.gnu.org/licenses/>.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. testfx-rpt-tests.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  rpt                  PIC X(14)   VALUE "testfx-rpt".
       01  t-res.
           05 t-succ            PIC 9(3)    VALUE 254.
           05 t-fail            PIC 9(3)    VALUE 30.
           05 t-stat            PIC A       VALUE 'F'.

       PROCEDURE DIVISION.
           DISPLAY "TESTFX-RPT tests"

           DISPLAY
              "Next line should output 254 succeeded, "
              "30 failed, out of 284 total."
           CALL rpt USING t-res
           STOP RUN.
