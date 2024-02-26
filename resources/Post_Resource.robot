*** Settings ***
Resource    ./main.robot


*** Keywords ***
Realizar Busca
    [Arguments]    ${id}
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    GET On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/posts/${id}

    Log To Console    ${Response.json()}

Realizar um post
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    POST On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/posts
    ...    data={"userId": "1", "id": "193", "title": "bla blablabla bla", "body": "bla bla bla bla blablabla"}

    Log To Console    ${Response.json()}

Realizar um delete
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    DELETE On Session    alias=api    headers=${headers}    url=/posts/1

    Log To Console    ${Response.json()}

Realizar um put
    ${headers}    Create Dictionary    Content-Type=application/json

    ${Response}    PUT On Session
    ...    alias=api
    ...    headers=${headers}
    ...    url=/posts/1
    ...    data={"userId": "10", "id": "19945", "title": "eu modifiquei", "body": "bla bla bla bla blablabla"}

    Log To Console    ${Response.json()}
