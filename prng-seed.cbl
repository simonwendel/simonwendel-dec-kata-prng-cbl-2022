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
