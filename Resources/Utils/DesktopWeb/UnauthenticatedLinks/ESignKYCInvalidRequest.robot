*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PostLogin E Sign KYC Invalid Request Page
    Go To  ${e_eSignKYC_invalidRequestURL}
    Verify Page Contains Image  ${KU_W_eSignKYC_imgIcon}
    Wait For Element Visibility  ${KU_W_eSignKYC_statusTitle}
    Verify Element And Text  ${KU_W_eSignKYC_statusTitle}  ${e_eSignKYC_invalidStatusTitle}
    Verify Element And Text  ${KU_W_eSignKYC_statusDesc}  ${e_esignKYC_invalidStatusDesc}
    Wait And Click  ${KU_W_eSignKYC_okayBtn}
    Verify Login Page
