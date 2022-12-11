       IDENTIFICATION DIVISION.
       PROGRAM-ID. assert-eq.

       DATA DIVISION.
       LINKAGE SECTION.
       01 t-res.
           05 t-succ         PIC 999.
           05 t-fail         PIC 999.
           05 t-stat         PIC 9.
       01 exp                PIC S9(9).
       01 act                PIC S9(9).

       PROCEDURE DIVISION USING t-res, exp, act.
           DISPLAY "Checking if " exp " = " act
           IF exp = act
              PERFORM 200-mark-succeeded
           ELSE
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
       END PROGRAM assert-eq.
