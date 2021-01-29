*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin FD Landing Page
    Log To Console  FD
    Wait For Element Visibility  ${KU_W_FDTitle}
    Click Element  ${KU_W_FDTitle}
    Wait For Element Visibility  ${KU_W_FD_allFDTab}
    Verify Element And Text  ${KU_W_FD_allFDTab}  ${e_FD_allFDTab}
    Go Back