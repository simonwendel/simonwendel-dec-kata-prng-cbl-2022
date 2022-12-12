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
              FUNCTION NUMVAL(t-succ) + FUNCTION NUMVAL(t-fail)

           MOVE t-succ TO disp-succ
           MOVE t-fail TO disp-fail

           DISPLAY
              disp-succ " succeeded and "
              disp-fail " failed, out of "
              disp-total " tests."
           GOBACK.
       END PROGRAM testfx-rpt.
