*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PostLogin Insure Landing Page
    Verify PostLogin Account Creation 
    Verify PreLogin Insure Page


Navigate To Insure Page And Click Premium Button
    Click Element  ${KU_W_insureLink}
    Verify Language Switch Login And Signup Link
    Wait For Element Visibility  ${KU_W_insure_checkPremiumBtn1}
    Sleep   1s
    Click Button  ${KU_W_insure_checkPremiumBtn1}