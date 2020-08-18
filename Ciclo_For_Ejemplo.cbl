      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 VARIABLES.
           03  i           PIC 999.
           03  RESULTADO   PIC 999.
           03  RESTO       PIC 999.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM VARYING i FROM 1 BY 1 UNTIL i > 100
           DIVIDE i BY 6 GIVING RESULTADO REMAINDER RESTO

           END-DIVIDE

           IF RESTO = ZERO
               DISPLAY "El numero " i " es divisible por 2 y 3."
           END-PERFORM.

           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
