*** Settings ***

Library     SeleniumLibrary

*** Keywords ***
Verify Value Funds Landing Page
    Wait For Element Visibility    ${KU_W_valueFundsTitle} 
    Click Element  ${KU_W_valueFundsTitle} 
    Wait For Element Visibility  ${KU_W_invest_fundsScreenTitle} 
    Verify Search And Sort  ${KU_W_searchBarForFunds}  ${e_invest_mf_searchBarText}   ${KU_W_sort}  
    Verify Element And Text   ${KU_W_invest_fundsScreenTitle}  ${e_invest_valueFunds_screenText} 
    Go Back