*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin FD Landing Page
    Log To Console  FD
    Wait For Element Visibility  ${KU_W_FDTitle}
    Click Element  ${KU_W_FDTitle}
    Wait For Element Visibility  ${KU_W_FD_introMsg}
    Verify Element And Text  ${KU_W_FD_introMsg}  ${e_FD_introMsg}
    Go Back