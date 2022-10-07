*** Settings ***
Documentation    Exercício Proposto pela Prime Hero 

#Exercício For Simples + Lista
#Exiba cada uma das frutas de uma lista usando um For Simples

*** Variables ***
@{FRUTAS} 
...        maça
...        laranja
...        Banana
...        melão
...        caju
...        damasco

*** Test Cases ***
Frutas Lista
    [tags]  Frutas
    @{FRUTAS}   Create List     maça    laranja    Banana    melão    caju    damasco
    FOR     ${FRUTA}        IN      @{FRUTAS}
        Log To Console      ${FRUTA}
    END