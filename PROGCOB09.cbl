       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB09.
      **************************************
      * AREA DE COMENTARIOS
      * AUTHOR: GUSTAVO ANTUNES
      * OBJETIVO: RECEBER PRODUTO, VALOR E CALCULAR O FRETE
      * DATA: 30/12/2019
      *************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-PRODUTO  PIC X(20) VALUE SPACES.
       77 WRK-VALOR    PIC 9(06)V99 VALUE ZEROS.
       77 WRK-FRETE    PIC 9(04)V99 VALUE ZEROS.
       77 WRK-UF       PIC X(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'PRODUTO.. '.
           ACCEPT WRK-PRODUTO FROM CONSOLE.

           DISPLAY 'VALOR.. '.
           ACCEPT WRK-VALOR FROM CONSOLE.

           DISPLAY 'ESTADO.. '.
           ACCEPT WRK-UF FROM CONSOLE.

           EVALUATE WRK-UF
               WHEN 'SP'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,05
               WHEN 'RJ'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,10
               WHEN 'MG'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,15
               WHEN OTHER
                   DISPLAY 'NÃO PODEMOS ENTREGAR'
           END-EVALUATE.
           IF WRK-FRETE NOT EQUAL 0
               DISPLAY 'VALOR DO FRETE COM O PRODUTO ' WRK-FRETE
           END-IF.
           STOP RUN.
