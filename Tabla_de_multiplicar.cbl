      ******************************************************************
      * Author: Bruno Tarditi
      * Date: 9/9/2020
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABLA-DE-MULTIPLICAR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 VARIABLES.
           02 NUMERO PIC 99.
           02 i PIC 99 VALUE 1.
           02 RESULTADO PIC ZZZ.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       PEDIR-NUMERO.
           DISPLAY "Digite un numero de la tabla de multiplicar entre"
           " 1 y 10: "
           ACCEPT NUMERO.
           IF NUMERO < 1 OR NUMERO > 10
               DISPLAY "Debe ser entre 1 y 10."
               PERFORM PEDIR-NUMERO
           ELSE
               PERFORM TABLA
           END-IF.
       TABLA.
            COMPUTE RESULTADO = NUMERO * i
            PERFORM MOSTRAR.
            IF i < 10
                PERFORM OPERACION
            ELSE
                PERFORM FIN-PROGRAMA.

       OPERACION.
           ADD 1 TO i.
           PERFORM TABLA.

       MOSTRAR.
            DISPLAY NUMERO "*" i "=" RESULTADO.

       FIN-PROGRAMA.
            STOP RUN.
       END PROGRAM TABLA-DE-MULTIPLICAR.
