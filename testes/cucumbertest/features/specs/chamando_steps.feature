#language: pt

Funcionalidade: Trabalhando com chamados de outros passos

    Cenario: Amasso laranjas
        Dado que eu tenho 10 laranjas no estoque
        Quando eu amasso 2 laranjas
        Então eu verifico quantas laranjas sobram no estoque 

    Cenario: Revendo laranjas
        Quando Revendo 2 laranjas
        Então eu verifico quantas laranjas eu fiquei