*** Settings ***
Resource            ../resources/main.robot

Suite Teardown      Deletar todas sessões
Test Setup          Criar sessão    https://jsonplaceholder.typicode.com/


*** Variables ***
${id}       1


*** Test Cases ***
Cenário 1: Buscar usuário por id
    Realizar busca    ${id}

Cenário 2: Fazer um post
    Realizar um post
