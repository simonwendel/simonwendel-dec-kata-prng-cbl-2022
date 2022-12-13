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
       PROGRAM-ID. prng-seed.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  datetime             PIC X(16).
       77  left-index           USAGE COMP-2.
       77  right-index          USAGE COMP-2.
       LINKAGE SECTION.
       01  prng-state.
           05 n                 PIC 99.
           05 num.
              10                PIC 9
              OCCURS 1 TO 12 TIMES DEPENDING ON n.

       PROCEDURE DIVISION USING prng-state.
           MOVE FUNCTION CURRENT-DATE TO datetime
           COMPUTE left-index = 16 - n + 1
           COMPUTE right-index = left-index + n
           MOVE datetime (left-index : right-index ) TO num
           GOBACK.
       END PROGRAM prng-seed.
