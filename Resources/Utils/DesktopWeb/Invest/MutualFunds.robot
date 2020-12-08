*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Mutual Fund Landing Page
    Wait For Element Visibility  ${KU_W_investLink} 
    Click Element  ${KU_W_investLink} 
    Sleep  1s
    Scroll Untill View  ${KU_W_mutualFund}
    Click Element  ${KU_W_mutualFund}
    Verify Mutual Fund Details Page  ${KU_W_invest_mf_fund1}
    Go Back 