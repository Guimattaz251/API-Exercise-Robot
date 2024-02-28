*** Settings ***
Resource            ../resources/main.robot

Test Setup          Criar sessão    https://jsonplaceholder.typicode.com/
Test Teardown       Deletar todas sessões


*** Variables ***
${id}       1


*** Test Cases ***
Cenário 1: Testar método GET
    Realizar busca de todos posts
    Realizar busca    ${id}
    Realizar Busca para usuário inexistente    234

Cenário 2: Testar método POST
    Realizar um post

Cenário 3: Testar método PUT
    Realizar um put    ${id}

Cenário 4: Testar método DELETE
    Realizar um delete    ${id}
    Realizar um delete em usuário inexistente    932
