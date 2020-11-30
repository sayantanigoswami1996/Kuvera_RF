*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Top Gainers Landing Page
    Wait For Element Visibility    ${KU_W_topGainerTitle} 
    Click Element  ${KU_W_topGainerTitle} 
    Wait For Element Visibility  ${KU_W_topGainerScreenTitle}  
    # Verify Search And Sort  ${KU_W_searchBarForTopGainer}  ${e_invest_stock_searchBarTxt}   
    Verify Element And Text   ${KU_W_topGainerScreenTitle}  ${e_invest_topGainers_screenText}  
    Go Back