*** Settings ***
Documentation    Database helpers connection

Library    RobotMongoDBLibrary.Delete
Library    RobotMongoDBLibrary.Find

*** Variable ***
&{MONGO_URI}    connection=mongodb+srv://bugereats:7KOthqhCYWvIbfH1@cluster0.9bbpc.mongodb.net/PartnerDB?retryWrites=true&w=majority    database=PartnerDB    collection=partner

*** Keywords ***
Remove Partner By name
    [Arguments]    ${partner_name}

    ${filter}    Create Dictionary
    ...          name=${partner_name}
    DeleteOne    ${MONGO_URI}            ${filter}

Find Partener By Name
    [Arguments]    ${partner_name}

    ${filter}    Create Dictionary
    ...          name=${partner_name}

    ${results}    Find    ${MONGO_URI}    ${filter}

    [return]    ${results}[0]