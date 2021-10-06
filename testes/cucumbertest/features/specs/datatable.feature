#language: pt

Funcionalidade: Data table

    Cenario: Datatable com linha
        Dado que eu tenha umas laranjas
        |laranja| 10 |
        Quando eu corto 2 laranjas
        Então eu verifico quantas laranjas sobraram inteiras

    Cenario: Datatable com coluna
        Dado que eu tenha laranjas
        |laranja|
        |10     |
        Quando eu chupo 2 laranjas
        Então eu verifico quantas laranjas sobraram

    Cenario: Datatable com mais de uma linha
        Dado que eu tenho uma sacola com dois tipos de frutas
        |laranja| uva |
        |  2    |   4 |
        Quando estava andando comi 2 uva e 1 laranja
        Então quantas frutas eu te tenho na sacola