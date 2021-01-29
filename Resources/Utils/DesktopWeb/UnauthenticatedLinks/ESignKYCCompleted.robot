*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PostLogin E Sign KYC Completed Page
    Go To  ${e_eSignKYC_completedESignURL} 
    Verify Page Contains Image  ${KU_W_eSignKYC_imgIcon}
    Wait For Element Visibility  ${KU_W_eSignKYC_statusTitle}
    Verify Element And Text  ${KU_W_eSignKYC_statusTitle}  ${e_eSignKYC_completedStatusTitle}
    Verify Element And Text  ${KU_W_eSignKYC_statusDesc}  ${e_eSignKYC_completedStatusDesc}
    Wait And Click  ${KU_W_eSignKYC_okayBtn}
    Verify Login Page