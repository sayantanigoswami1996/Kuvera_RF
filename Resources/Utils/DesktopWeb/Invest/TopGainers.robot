*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Top Gainers Landing Page
    Click Element  ${KU_W_investLink}
    Wait For Element Visibility    ${KU_W_topGainerTitle} 
    Click Element  ${KU_W_topGainerTitle} 
    Wait For Element Visibility  ${KU_W_topGainerScreenTitle}  
    Verify Language Switch Login And Signup Link  
    Verify Search And Sort  ${KU_W_searchBarForTopGainer}  ${e_invest_stock_searchBarTxt}  ${KU_W_sort_topGainer_India}
    Element Should be Visible  ${KU_W_topGainerScreenTitle}
    Verify Element And Text   ${KU_W_topGainerScreenTitle}  ${e_invest_topGainers_screenText}
    