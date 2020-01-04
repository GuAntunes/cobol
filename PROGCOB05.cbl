       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      **************************************
      * AREA DE COMENTARIOS
      * AUTHOR: GUSTAVO ANTUNES
      * OBJETIVO: TESTAR OPERADORES ARITIMETICOS
      * DATA: 29/12/2019
      *************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1       PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2       PIC 9(02) VALUE ZEROS.
       77 WRK-RESUL      PIC 9(04) VALUE ZEROS.
       77 WRK-RESTO      PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY '--------------------------'.
           DISPLAY 'NUMERO 1.. ' WRK-NUM1.
           DISPLAY 'NUMERO 2.. ' WRK-NUM2.
      ******************SOMA
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
           DISPLAY 'SOMA.. ' WRK-RESUL.
      ******************SUBTRAÇÃO
           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'SUBTRAÇÃO.. ' WRK-RESUL.
      ******************DIVISÃO
           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL
           REMAINDER WRK-RESTO.
           DISPLAY 'DIVISÃO.. ' WRK-RESUL.
           DISPLAY 'RESTO.. ' WRK-RESTO.
      ******************MULTIPLICAÇÃO
           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'MULTIPLICAÇÃO.. ' WRK-RESUL.
      ******************COMPUTE
           COMPUTE WRK-RESUL = (WRK-NUM1 + WRK-NUM2)/2.
           DISPLAY 'MEDIA.. ' WRK-RESUL.
           STOP RUN.
