       IDENTIFICATION DIVISION.
       PROGRAM-ID. testfx-rpt.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  t-total              PIC Z(03).
       LINKAGE SECTION.
       01  t-res.
           05 t-succ            PIC 9(3).
           05 t-fail            PIC 9(3).
           05 t-stat            PIC A.

       PROCEDURE DIVISION USING t-res.
           COMPUTE t-total =
              FUNCTION NUMVAL(t-succ) + FUNCTION NUMVAL(t-fail)
           DISPLAY
              t-succ " succeeded and "
              t-fail " failed, out of "
              t-total " tests."
           GOBACK.
       END PROGRAM testfx-rpt.
