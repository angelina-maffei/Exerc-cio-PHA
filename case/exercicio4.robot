*** Settings ***
Documentation    Exercício Proposto pela Prime Hero
Library    OperatingSystem
#Crie um loop que conte quantos números par existem entre 0 e 10, usando if inline


*** Test Cases ***
Loop que conta números pares entra 0 a 10
    [Tags]    COUNT
    FOR     ${COUNT}    IN RANGE     0   11    
        Continue For Loop If    (${COUNT}+1)%2==0
        Log To Console   \nSão numeros pares ${COUNT} 
    END
