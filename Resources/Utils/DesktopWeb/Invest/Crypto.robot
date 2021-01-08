*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Crypto Landing Page
    Log To Console  Crypto
    Wait For Element Visibility  ${KU_W_cryptoTitle}
    Click Element  ${KU_W_cryptoTitle}
    Verify Login And Signup Link
    Sleep  3s
    Go Back