#language: pt

#para quando há algum contexto da funcionalidade
#que se repete

Funcionalidade: Trabalhar com contexto

    Contexto:
    Dado que eu tenha 20 laranjas

Cenario: Somar as laranjas
Quando eu coloco 2 laranjas na bolsa
Então eu fico com 22 laranjas

Cenario: Subtrair laranjas 
Quando eu tiro 2 laranjas
Então eu verifico com quantas laranjas eu fiquei