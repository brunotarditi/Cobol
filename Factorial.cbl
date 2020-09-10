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
           02 N PIC 9(6).
           02 RESULTADO PIC Z(6).
           02 AUX PIC 9(6).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       TOMA-DATOS.
           DISPLAY "Numero factorial"
           ACCEPT N
           MOVE N TO AUX.

       CONDICION.
           IF N > 1
               PERFORM OPERACION.

       OPERACION.
           SUBTRACT 1 FROM N
           PERFORM FACTORIAL.

       FACTORIAL.
           COMPUTE AUX = AUX * N
           PERFORM CONDICION.
           PERFORM MOSTRAR.

       MOSTRAR.
           MOVE AUX TO RESULTADO
           IF N > 0
               DISPLAY "El factorial es: " RESULTADO

           ELSE
               DISPLAY "El factorial es: " 1.
           STOP RUN.

       END PROGRAM YOUR-PROGRAM-NAME.
