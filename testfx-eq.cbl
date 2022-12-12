       IDENTIFICATION DIVISION.
       PROGRAM-ID. testfx-eq.

       DATA DIVISION.
       LINKAGE SECTION.
       01  t-res.
           05 t-succ            PIC 9(03).
           05 t-fail            PIC 9(03).
           05 t-stat            PIC 9(01).
       01  exp                  PIC S9(09).
       01  act                  PIC S9(09).

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
           IF t-stat = 0
              MOVE 1 TO t-stat
           END-IF.
       END PROGRAM testfx-eq.
