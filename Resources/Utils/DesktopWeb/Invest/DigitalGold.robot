*** Settings ***

Library     SeleniumLibrary

*** Keywords ***
Verify Digital Gold Landing Page
    Wait For Element Visibility   ${KU_W_digitalGoldTitle}
    Click Element  ${KU_W_digitalGoldTitle}
    Wait For Element Visibility   ${KU_W_dg_screenTitle} 
    Verify Language Switch Login And Signup Link   
    Verify Element And Text   ${KU_W_dg_screenTitle}   ${e_invest_digiGold_screenText} 
    Go Back