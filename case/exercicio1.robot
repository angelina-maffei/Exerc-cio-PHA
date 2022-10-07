*** Settings ***
Documentation    Exercício Proposto pela Prime Hero 
Library    OperatingSystem

#Exibir nome, idade, rua, numero, cep, bairro, cidade e estado no console a partir 

*** Variables ***
${Nome}    Angelina P S Maffei
&{Angelina}

...        nome=Angelina
...        idade=40
...        rua=Rua Bolívia
...        numero=1
...        cep=17054-140
...        bairro=Jd Terra Branca 
...        cidade=Bauru
...        estado= SP
  
*** Test Cases **
Iformação Sobre Angelina
    Log To Console      \n${Angelina.nome}
    Log To Console      ${Angelina.idade}
    Log To Console      ${Angelina.rua}
    Log To Console      ${Angelina.numero}
    Log To Console      ${Angelina.cep}
    Log To Console      ${Angelina.bairro}
    Log To Console      ${Angelina.cidade}
    Log To Console      ${Angelina.estado}