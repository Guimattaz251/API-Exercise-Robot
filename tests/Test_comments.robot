*** Settings ***
Resource            ../resources/main.robot

Test Setup          Criar sessão    https://jsonplaceholder.typicode.com/
Test Teardown       Deletar todas sessões


*** Variables ***
${id}       1


*** Test Cases ***
Cenário 1: Testando método GET
    Realizar busca de todos comments
    Realizar busca de comment específico    ${id}
    Realizar busca de comment inexistente    932

Cenário 2: Testando método POST
    Realizar post de comment

Cenário 3: Testando método PUT
    Realizar put de comment    ${id}

Cenário 4: Testando método DELETE
    Realizar delete de comment    ${id}
