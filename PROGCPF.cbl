       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCPF.
      **************************************
      * AREA DE COMENTARIOS
      * AUTHOR: GUSTAVO ANTUNES
      * OBJETIVO: RECEBER NOME E CPF E IMPRIMIR FORMATADO
      * DATA: 29/12/2019
      *************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME       PIC X(20) VALUE SPACES.
       77 WRK-CPF        PIC 9(11) VALUE ZEROS.
       77 WRK-CPF-ED PIC ZZZ.ZZZ.ZZZ/99 VALUE ZEROS.

       PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE.
           ACCEPT WRK-CPF FROM CONSOLE.
           MOVE WRK-CPF TO WRK-CPF-ED.
      ****************MOSTRA DADOS
           DISPLAY 'NOME ' WRK-NOME.
           DISPLAY 'CPF ' WRK-CPF-ED.
           STOP RUN.
