*** Settings ***
Documentation    DELETE /partners

Resource    ${EXECDIR}/resources/base.robot


*** Test Case ***
Should remove a partner
    ${partner}          Factory Remove Partner
    ${partner_id}       Create a new partner      ${partner}
    Delete Partner      ${partner_id}
    Status Should Be    204

Should return 404 on remove a partner
    ${partner}                Factory Error Partner
    ${partner_id}             Create a new partner     ${partner}
    Remove Partner By name    ${partner}[name]
    Delete Partner            ${partner_id}
    Status Should Be          404