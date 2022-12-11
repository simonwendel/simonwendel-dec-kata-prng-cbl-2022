       IDENTIFICATION DIVISION.
       PROGRAM-ID. assert-eq-tests.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  eq                   PIC X(14)   VALUE "assert-eq".
       77  exp PIC S9(9).
       77  act PIC S9(9).
       01  t-res.
           05 t-succ            PIC 999     VALUE 0.
           05 t-fail            PIC 999     VALUE 0.
           05 t-stat            PIC 9       VALUE 0.
       77  msg-fail             PIC X(42)
           VALUE "Internal tests on assert-eq module failed!".
       77  msg-succeed          PIC X(45)
           VALUE "Internal tests on assert-eq module succeeded.".

       PROCEDURE DIVISION.
           MOVE 25 TO exp, act
           CALL eq USING t-res, exp, act

           MOVE 2555 TO exp, act
           CALL eq USING t-res, exp, act

           MOVE -9 TO exp, act
           CALL eq USING t-res, exp, act

           IF t-stat = 1
              DISPLAY msg-fail
              STOP RUN
           END-IF

           MOVE 0 TO exp MOVE -1 TO act
           CALL eq USING t-res, exp, act

           MOVE -999999999 TO exp MOVE 999999999 TO act
           CALL eq USING t-res, exp, act

           IF t-stat = 1
              AND t-succ = 3
              AND t-fail = 2
              DISPLAY msg-succeed
           ELSE
              DISPLAY msg-fail
           END-IF

           STOP RUN.
