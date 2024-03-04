*** Settings ***
Resource    ./main.robot


*** Keywords ***
Realizar busca de todos albums
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    GET On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/albums
    ...    expected_status=200

    Log To Console    ${Response.json()}

Realizar busca de album específico
    [Arguments]    ${id}
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    GET On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/albums/${id}
    ...    expected_status=200

    Log To Console    ${Response.json()}

Realizar busca de album inexistente
    [Arguments]    ${id}
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    GET On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/albums/${id}
    ...    expected_status=404

    Log To Console    ${Response.json()}

Realizar post de album
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    POST On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/albums
    ...    data={"userId": "1", "id": "103", "title": "Teste"}
    ...    expected_status=201

    Log To Console    ${Response.json()}

Realizar put de album
    [Arguments]    ${id}
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    PUT On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/albums/1
    ...    data={"userId": "1", "id": "105", "title": "Teste123"}
    ...    expected_status=200

    Log To Console    ${Response.json()}

Realizar delete de album
    [Arguments]    ${id}
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    DELETE On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/albums/1
    ...    expected_status=200

    Log To Console    ${Response.json()}
