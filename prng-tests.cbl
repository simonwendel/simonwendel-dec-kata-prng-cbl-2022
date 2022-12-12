       IDENTIFICATION DIVISION.
       PROGRAM-ID. prng-tests.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  prng-state-1.
           05 n-1               PIC 99      VALUE 6.
           05 num-1             PIC 9(6)    VALUE 123456.
       01  prng-state-2.
           05 n-2               PIC 99      VALUE 12.
           05 num-2             PIC 9(12)   VALUE 123456789123.
       77  prng                 PIC X(4)    VALUE "prng".
       77  rpt                  PIC X(14)   VALUE "testfx-rpt".
       77  eq                   PIC X(14)   VALUE "testfx-eq".
       77  exp                  PIC S9(12).
       77  act                  PIC S9(12).
       01  t-res.
           05 t-succ            PIC 9(3)    VALUE 0.
           05 t-fail            PIC 9(3)    VALUE 0.
           05 t-stat            PIC A       VALUE 'S'.

       PROCEDURE DIVISION.
           DISPLAY "PRNG tests"

           CALL prng USING prng-state-1
           MOVE 241383 TO exp
           MOVE num-1 TO act
           CALL eq USING t-res, exp, act

           CALL prng USING prng-state-1
           MOVE 265752 TO exp
           MOVE num-1 TO act
           CALL eq USING t-res, exp, act

           CALL prng USING prng-state-1
           MOVE 624125 TO exp
           MOVE num-1 TO act
           CALL eq USING t-res, exp, act

           CALL prng USING prng-state-2
           MOVE 578780560891 TO exp
           MOVE num-2 TO act
           CALL eq USING t-res, exp, act

           CALL rpt USING t-res

           STOP RUN.
