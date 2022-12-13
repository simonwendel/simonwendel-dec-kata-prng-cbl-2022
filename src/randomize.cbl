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
       PROGRAM-ID. randomize.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  cycles               PIC 9(9).
       77  prng                 PIC X(4)    VALUE "prng".
       77  seed                 PIC X(9)    VALUE "prng-seed".
       01  prng-state.
           05 n                 PIC 99      VALUE 3.
           05 num               PIC 9(3).

       PROCEDURE DIVISION.
           ACCEPT cycles FROM COMMAND-LINE.

           CALL seed USING prng-state
           PERFORM cycles TIMES
              CALL prng USING prng-state
              DISPLAY num
           END-PERFORM

           STOP RUN.
