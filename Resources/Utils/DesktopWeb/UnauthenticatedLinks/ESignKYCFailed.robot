*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PostLogin E Sign KYC Failed Page
    Go To  ${e_eSignKYC_failedESignURL}
    Verify Page Contains Image  ${KU_W_eSignKYC_imgIcon}
    Wait For Element Visibility  ${KU_W_eSignKYC_statusTitle}
    Verify Element And Text  ${KU_W_eSignKYC_statusTitle}  ${e_eSignKYC_failedStatusTitle}
    Verify Element And Text  ${KU_W_eSignKYC_statusDesc}  ${e_eSignKYC_failedStatusDesc}
    Wait And Click  ${KU_W_eSignKYC_okayBtn}
    Verify Login Page