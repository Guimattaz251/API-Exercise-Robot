*** Settings ***
Resource    ./main.robot


*** Keywords ***
Realizar busca de todos photos
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    GET On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/photos
    ...    expected_status=200

    Log To Console    ${Response.json()}

Realizar busca de photo específico
    [Arguments]    ${id}
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    GET On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/photos/${id}
    ...    expected_status=200

    Log To Console    ${Response.json()}

Realizar busca de photo inexistente
    [Arguments]    ${id}
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    GET On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/photos/${id}
    ...    expected_status=404

    Log To Console    ${Response.json()}

Realizar post de photo
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    POST On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/photos
    ...    data={"albumId": "1", "id": "103", "title": "Teste", "url": "https://teste.com", "thumbnailUrl": "https://testando.com"}
    ...    expected_status=201

    Log To Console    ${Response.json()}

Realizar put de photo
    [Arguments]    ${id}
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    PUT On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/photos/1
    ...    data={"albumId": "1", "id": "105", "title": "Teste123", "url": "https://teste.com", "thumbnailUrl": "https://testando.com"}
    ...    expected_status=200

    Log To Console    ${Response.json()}

Realizar delete de photo
    [Arguments]    ${id}
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    DELETE On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/photos/1
    ...    expected_status=200

    Log To Console    ${Response.json()}
