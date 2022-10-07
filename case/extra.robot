*** Settings ***
Documentation

*** Variables ***
@{Lista}    
...        A=1
...        B=2
...        C=3

*** Keywords ***
Exercício Try + Except + Finally
    [Tags]  try
    FOR  ${item}  IN  @{lista}
        TRY
            ${lista_nova} =  Evaluate ${lista_nova} + [${item}]
        EXCEPT
            Log To Console  \n${item} não é um número
        FINALLY
            Log To Console  \na nova lista com apenas numeros${lista_nova}
        END
    END
    
