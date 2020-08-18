      ******************************************************************
      * Author: Bruno Tarditi
      * Date: 25/07/2020
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CAJERO-VIRTUAL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 SALDO-INICIAL PIC 9(4)V99 VALUE 1000.00.
       01 OPCION PIC 9.
       01 RETIRO PIC 9999V99.
       01 EXTRA PIC 9999V99.

       PROCEDURE DIVISION.

       MENU.
           DISPLAY "Bienvenido a su  cajero virtual."
           DISPLAY "1. Ingresa dinero en cuenta."
           DISPLAY "2. Retirar dinero."
           DISPLAY "Cualquier tecla para salir."
           DISPLAY "Ingrese la opcion: "
           ACCEPT OPCION

           EVALUATE TRUE
           WHEN OPCION = 1
           DISPLAY "Digite la cantidad de dinero a ingresar: "
           ACCEPT EXTRA
           COMPUTE SALDO-INICIAL = SALDO-INICIAL + EXTRA
           DISPLAY "Dinero en cuenta: " SALDO-INICIAL
           PERFORM MENU

           WHEN OPCION = 2
           DISPLAY "Digite la cantidad de dinero a retirar: "
           ACCEPT RETIRO
           IF RETIRO > SALDO-INICIAL
               DISPLAY "No dispone de esa cantidad de dinero."
           ELSE
               COMPUTE SALDO-INICIAL = SALDO-INICIAL - RETIRO
               DISPLAY "Dinero en cuenta: " SALDO-INICIAL
           END-IF
           PERFORM MENU

           WHEN OTHER
           DISPLAY "Adios."
           END-EVALUATE
           STOP RUN.

       END PROGRAM CAJERO-VIRTUAL.
