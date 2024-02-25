*** Settings ***
Resource    ./main.robot


*** Keywords ***
Criar sessão
    [Arguments]    ${url}
    Create Session    alias=api    url=${url}

Deletar todas sessões
    Delete All Sessions
