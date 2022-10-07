*** Settings ***
Documentation     Exercício Proposto pela Prime Hero
Library    OperatingSystem  


#Criar uma keyword que receba idade e retorne o ano de nascimento
#...Se o ano for menor que 2000, exibir mensagem dizendo que nas
#ceu no século passado

*** Variables ***
${idade}    40



*** Keywords ***
Calcular o ano de nascimento e idade
    Log To Console  \n${idade} anos
    ${ano}  Evaluate  2022-${idade}
    Log to console  \nNasceu no ano de ${ano}
    IF  ${ano} < 2000  
        Log to console  Nasceu no século passado   
        [Return] ${ano}
    END
    