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
       PROGRAM-ID. testfx-eq.

       DATA DIVISION.
       LINKAGE SECTION.
       01  t-res.
           05 t-succ            PIC 9(3).
           05 t-fail            PIC 9(3).
           05 t-stat            PIC A.
       01  exp                  PIC S9(12).
       01  act                  PIC S9(12).

       PROCEDURE DIVISION USING t-res, exp, act.
           IF exp = act
              PERFORM 200-mark-succeeded
           ELSE
              DISPLAY "Assertion failed: " exp " = " act
              PERFORM 300-mark-failed
           END-IF
           GOBACK.

       200-mark-succeeded.
           ADD 1 TO t-succ.

       300-mark-failed.
           ADD 1 TO t-fail
           IF t-stat = 'S'
              MOVE 'F' TO t-stat
           END-IF.
       END PROGRAM testfx-eq.
