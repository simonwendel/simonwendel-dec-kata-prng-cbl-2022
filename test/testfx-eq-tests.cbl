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
       PROGRAM-ID. testfx-eq-tests.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  eq                   PIC X(14)   VALUE "testfx-eq".
       77  exp                  PIC S9(9).
       77  act                  PIC S9(9).
       01  t-res.
           05 t-succ            PIC 9(3)    VALUE 0.
           05 t-fail            PIC 9(3)    VALUE 0.
           05 t-stat            PIC A       VALUE 'S'.
       77  msg-fail             PIC X(42)
           VALUE "Internal tests on testfx-eq module failed!".
       77  msg-succ             PIC X(45)
           VALUE "Internal tests on testfx-eq module succeeded.".

       PROCEDURE DIVISION.
           DISPLAY "TESTFX-EQ tests"

           MOVE 25 TO exp, act
           CALL eq USING t-res, exp, act

           MOVE 2555 TO exp, act
           CALL eq USING t-res, exp, act

           MOVE -9 TO exp, act
           CALL eq USING t-res, exp, act

           IF t-stat = 'F'
              DISPLAY msg-fail
              STOP RUN
           END-IF

           DISPLAY "Two failing assertions:"

           MOVE 0 TO exp MOVE -1 TO act
           CALL eq USING t-res, exp, act

           MOVE -999999999 TO exp MOVE 999999999 TO act
           CALL eq USING t-res, exp, act

           IF t-stat = 'F'
              AND t-succ = 3
              AND t-fail = 2
              DISPLAY msg-succ
           ELSE
              DISPLAY msg-fail
           END-IF

           STOP RUN.
