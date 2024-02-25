*** Settings ***
Resource    ../resources/main.robot


*** Variables ***
${id}       1


*** Test Cases ***
Cenário 1: Buscar usuário por id
    Create Session    alias=api    url=https://jsonplaceholder.typicode.com

    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    GET On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/posts/${id}

    Log To Console    ${Response.json()}

    Delete All Sessions
