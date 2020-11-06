*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary

Wait For Element Visbility
    [Arguments]                      ${element}
    Wait Until Element Is Visible    ${element}    timeout=30



