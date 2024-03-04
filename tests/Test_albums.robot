*** Settings ***
Resource            ../resources/main.robot

Test Setup          Criar sessão    https://jsonplaceholder.typicode.com/
Test Teardown       Deletar todas sessões


*** Variables ***
${id}       1


*** Test Cases ***
Cenário 1: Testando método GET
    Realizar busca de todos albums
    Realizar busca de album específico    ${id}
    Realizar busca de album inexistente    932

Cenário 2: Testando método POST
    Realizar post de album

Cenário 3: Testando método PUT
    Realizar put de album    ${id}

Cenário 4: Testando método DELETE
    Realizar delete de album    ${id}
