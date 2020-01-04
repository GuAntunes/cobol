       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB13.
      **************************************
      * AREA DE COMENTARIOS
      * AUTHOR: GUSTAVO ANTUNES
      * OBJETIVO: Utilização de paragrafos
      * DATA: 30/12/2019
      *************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02)V9 VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-NOTA1 > 0 AND WRK-NOTA2 > 0
               PERFORM 0200-PROCESSAR.
           END-IF.
           PERFORM 0300-FINALIZAR.
           STOP RUN.
       0100-INICIALIZAR.
           ACCEPT WRK-NOTA1 FROM CONSOLE.
           ACCEPT WRK-NOTA2 FROM CONSOLE.
       0200-PROCESSAR.
             COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
             EVALUATE WRK-MEDIA
               WHEN 10
                 DISPLAY 'APROVADO - BONUS'
               WHEN 6 THRU 9,9
                 DISPLAY 'APROVADO'
               WHEN 2 THRU 5,9
                   DISPLAY 'RECUPERAÇÃO'
               WHEN OTHER
                   DISPLAY 'REPROVADO'
             END-EVALUATE.
       0300-FINALIZAR.
           DISPLAY '--------------------------'.
           DISPLAY 'FIM DE PROCESSAMENTO'.
