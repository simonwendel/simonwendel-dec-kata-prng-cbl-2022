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
       PROGRAM-ID. testfx-rpt.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  disp-vals.
           05 disp-total        PIC ZZ9.
           05 disp-succ         PIC ZZ9.
           05 disp-fail         PIC ZZ9.
       LINKAGE SECTION.
       01  t-res.
           05 t-succ            PIC 9(3).
           05 t-fail            PIC 9(3).
           05 t-stat            PIC A.

       PROCEDURE DIVISION USING t-res.
           COMPUTE disp-total =
              FUNCTION NUMVAL (t-succ) + FUNCTION NUMVAL (t-fail)

           MOVE t-succ TO disp-succ
           MOVE t-fail TO disp-fail

           DISPLAY
              disp-succ " succeeded and "
              disp-fail " failed, out of "
              disp-total " tests."
           GOBACK.
       END PROGRAM testfx-rpt.
