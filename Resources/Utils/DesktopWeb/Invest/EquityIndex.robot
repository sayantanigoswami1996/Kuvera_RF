*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Equity Index Landing Page
    Wait For Element Visibility    ${KU_W_equityIndexTitle} 
    Sleep  1s
    Click Element  ${KU_W_equityIndexTitle} 
    Wait For Element Visibility  ${KU_W_invest_fundsScreenTitle}
    Verify Language Switch Login And Signup Link  
    Verify Search And Sort  ${KU_W_searchBarForFunds}  ${e_invest_mf_searchBarText}   ${KU_W_sort} 
    Verify Element And Text   ${KU_W_invest_fundsScreenTitle}    ${e_invest_equIndex_screenText} 
    Go Back