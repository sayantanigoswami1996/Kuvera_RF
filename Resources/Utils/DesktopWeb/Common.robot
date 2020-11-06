*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot

*** Keywords ***

Wait For Element Visbility
    [Arguments]                      ${element}
    Wait Until Element Is Visible    ${element}    timeout=30

Launch URL
    Open Browser       ${loginURL}    ${BROWSER}
    Title Should Be    ${KU_Title}

Welcome Page Should Be Open
    Title Should Be                ${KU_Title}

Get Json Values
    [Arguments]     ${jsonPath}            ${jsonFilePath}
    ${jsonFile}     Load JSON From File    ${jsonFilePath}
    ${jsonValue}    Get Value From Json    ${jsonFile}        ${jsonPath}
    [Return]        ${jsonValue}

Kuvera Logo Click
   Wait Until Element Is Visible    ${KU_close}
    Click Element                    ${KU_close}
    Wait Until Element Is Visible    ${KU_logo}
    Click Element                    ${KU_logo}
 



Quit Kuvera Application
    Quit Application

Close Kuvera Application
    Close Application