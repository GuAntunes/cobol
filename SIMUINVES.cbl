       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB17.
      **************************************
      * AREA DE COMENTARIOS
      * AUTHOR: GUSTAVO ANTUNES
      * OBJETIVO: Informaremos valor inicial de investimento, período
      * (numero de meses) e taxa de correção mensal. Ao final,
      * receberemos o valor corrigido em tela.
      * DATA: 30/12/2019
      *************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WRK-VALOR        PIC 9(08)V99 VALUE ZEROS.
           77 WRK-MESES        PIC 9(03) VALUE ZEROS.
           77 WRK-TAXA         PIC 9(02)V99 VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.

           IF WRK-VALOR > 0 AND WRK-MESES
           PERFORM 0200-PROCESSAR.

           PERFORM 0300-FINALIZAR.
           STOP RUN.

       0100-INICIALIZAR.
           DISPLAY 'VALOR DO INVESTIMENTO.. '.
           ACCEPT WRK-VALOR.
           DISPLAY 'PERIODO DO INVESTIMENTO.. '.
           ACCEPT WRK-MESES.
           DISPLAY 'TAXA DE CORREÇÃO MENSAL.. '.
           ACCEPT WRK-TAXA.

       0200-PROCESSAR.


       0300-FINALIZAR.
           DISPLAY '-----------------------'.
           DISPLAY 'FIM DE PROCESSAMENTO'.
