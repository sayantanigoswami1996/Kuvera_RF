*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Dhanteras Gold Offer Page
    Go To  ${e_dhanteras_URL}
    Wait For Element Visibility  ${KU_W_dhanteras_offerDate}
    Verify Page Contains Image  ${KU_W_dhanteras_imgIcon}
    Verify Element And Text  ${KU_W_dhanteras_offerDate}  ${e_dhanteras_offerDate}
    Wait And Click  ${KU_W_dhanteras_buyGoldWinBigBtn}
    Verify Login Page
    Verify Element And Text  ${KU_W_dhanteras_minPurchaseOffer}  ${e_dhanteras_minPurchaseOffer}
