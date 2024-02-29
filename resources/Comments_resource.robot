*** Settings ***
Resource    ./main.robot


*** Keywords ***
Realizar busca de todos comments
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    GET On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/comments
    ...    expected_status=200

    Log To Console    ${Response.json()}

Realizar busca de comment específico
    [Arguments]    ${id}
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    GET On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/comments/${id}
    ...    expected_status=200

    Log To Console    ${Response.json()}

Realizar busca de comment inexistente
    [Arguments]    ${id}
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    GET On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/comments/${id}
    ...    expected_status=404

    Log To Console    ${Response.json()}

Realizar post de comment
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    POST On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/comments
    ...    data={"postId": "1", "id": "103", "name": "Teste", "email": "teste@testando.com", "body": "testezin"}
    ...    expected_status=201

    Log To Console    ${Response.json()}

Realizar put de comment
    [Arguments]    ${id}
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    PUT On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/comments/1
    ...    data={"postId": "1", "id": "103", "name": "Teste123", "email": "teste@testando.com", "body": "testezin"}
    ...    expected_status=200

    Log To Console    ${Response.json()}

Realizar delete de comment
    [Arguments]    ${id}
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    DELETE On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/comments/1
    ...    expected_status=200

    Log To Console    ${Response.json()}
