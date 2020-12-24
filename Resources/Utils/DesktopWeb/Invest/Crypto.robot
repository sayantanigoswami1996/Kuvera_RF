*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Crypto Landing Page
    Log To Console  Crypto
    Wait For Element Visibility  ${KU_W_cryptoTitle}
    Click Element  ${KU_W_cryptoTitle}
    Wait For Element Visibility  ${KU_W_crypto_introMsg}
    Verify Element And Text  ${KU_W_crypto_introMsg}  ${e_crypto_introMsg}
    Go Back