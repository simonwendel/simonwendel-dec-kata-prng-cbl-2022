       IDENTIFICATION DIVISION.
       PROGRAM-ID. randomize.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  cycles               PIC 999.
       77  prng                 PIC X(4)    VALUE "prng".
       77  seed                 PIC X(9)    VALUE "prng-seed".
       01  prng-state.
           05 n                 PIC 99      VALUE 6.
           05 num               PIC 9(6).

       PROCEDURE DIVISION.
           ACCEPT cycles FROM COMMAND-LINE.

           CALL seed USING prng-state
           PERFORM cycles TIMES
              CALL prng USING prng-state
              DISPLAY num
           END-PERFORM

           STOP RUN.
