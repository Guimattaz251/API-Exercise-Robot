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
    ...    url=/posts/{id}/comments
    ...    expected_status=200

    Log To Console    ${Response.json()}
