*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Crypto Landing Page
    Log To Console  Crypto
    Wait For Element Visibility  ${KU_W_cryptoTitle}
    Click Element  ${KU_W_cryptoTitle}
    Sleep  7s
    Verify Login And Signup Link
    Sleep  3s
    Go Back