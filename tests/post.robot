*** Settings ***
Documentation    POST /partners

Resource    ${EXECDIR}/resources/base.robot


*** Test Case ***
Should create a new Partner
    ${partner}                Factory New Partner
    Remove Partner By name    ${partner}[name]

    ${response}         POST Partner                      ${partner}
    Status Should Be    201
    ${result}           Find Partener By Name             ${partner}[name]
    Should Be Equal     ${response.json()}[partner_id]    ${result}[_id]

Should return duplicate company name
    ${partner}    Factory Dup Name
    
    Create a new partner    ${partner}
    ${response}         POST Partner                   ${partner}
    Status Should Be    409
    Should Be Equal     ${response.json()}[message]    Duplicate company name
