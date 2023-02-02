*** Settings ***
Documentation    GET /partners

Resource    ${EXECDIR}/resources/base.robot

Suite Setup     Create Partner List

*** Test Case ***
Should return a partner list
    ${response}         GET Partner
    Status Should Be    200 
    ${size}             Get Length     ${response.json()}
    Should Be True      ${size} > 0

Should search partner by name
    ${response}         Search Partner    Beira Mar
    Status Should Be    200

    ${size}            Get Length                         ${response.json()}
    Should Be True     ${size} == 1
    Should Be Equal    ${response.json()}[0][name]        Beira Mar
    Should Be Equal    ${response.json()}[0][email]       contato@restaurantebeiramar.com.br
    Should Be Equal    ${response.json()}[0][whatsapp]    19999999999
    Should Be Equal    ${response.json()}[0][business]    Restaurante

# gancho para os testes acima
*** Keywords ***
Create Partner List
    ${partners}    Factory Partner List

    FOR             ${p}    IN    @{partners}
        POST Partner    ${p}
    END