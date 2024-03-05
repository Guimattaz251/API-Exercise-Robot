*** Settings ***
Resource            ../resources/main.robot

Test Setup          Criar sessão    https://jsonplaceholder.typicode.com/
Test Teardown       Deletar todas sessões


*** Variables ***
${id}       1


*** Test Cases ***
Cenário 1: Testando método GET
    Realizar busca de todos photos
    Realizar busca de photo específico    ${id}
    Realizar busca de photo inexistente    5001

Cenário 2: Testando método POST
    Realizar post de photo

Cenário 3: Testando método PUT
    Realizar put de photo    ${id}

Cenário 4: Testando método DELETE
    Realizar delete de photo    ${id}
