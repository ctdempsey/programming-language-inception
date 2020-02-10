       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.
       PROCEDURE DIVISION.
          DISPLAY 'Hello from Cobol!'.
          CALL 'SYSTEM' USING 'sbcl --script lisp.lisp' END-CALL
          DISPLAY 'Goodbye from Cobol!'.
       STOP RUN.
