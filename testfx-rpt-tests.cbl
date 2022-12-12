       IDENTIFICATION DIVISION.
       PROGRAM-ID. testfx-rpt-tests.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  rpt                  PIC X(14)   VALUE "testfx-rpt".
       01  t-res.
           05 t-succ            PIC 9(3)    VALUE 254.
           05 t-fail            PIC 9(3)    VALUE 30.
           05 t-stat            PIC A       VALUE 'F'.

       PROCEDURE DIVISION.
           DISPLAY "TESTFX-RPT tests"

           DISPLAY
              "Next line should output 254 succeeded, "
              "30 failed, out of 284 total."
           CALL rpt USING t-res
           STOP RUN.
