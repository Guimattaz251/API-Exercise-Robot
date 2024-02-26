*** Settings ***
Resource            ../resources/main.robot

Suite Setup         Criar sessão    https://jsonplaceholder.typicode.com/
Suite Teardown      Deletar todas sessões


*** Variables ***
${id}       1


*** Test Cases ***
Cenário 1: Teste CRUD
    Realizar busca    ${id}
    Realizar um post
    Realizar um put
    Realizar um delete
