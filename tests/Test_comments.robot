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
