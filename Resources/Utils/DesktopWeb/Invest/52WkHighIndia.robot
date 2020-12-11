*** Settings ***

Library     SeleniumLibrary

*** Keywords ***
Verify High India Landing Page
    Wait For Element Visibility  ${KU_W_52WHighIndiaTitle}  
    Click Element  ${KU_W_52WHighIndiaTitle} 
    Wait For Element Visibility  ${KU_W_52WHighIndia_screenText}
    Sleep  1s
    Element Should Be Visible  ${KU_W_52WHighIndia_screenText}
    Verify Language Switch Login And Signup Link  
    Verify Search And Sort  ${KU_W_searchBarForTopGainerAnd52WIndia}  ${e_invest_stock_searchBarTxt}  ${KU_W_sort_topGainer_India}
    Verify Element And Text   ${KU_W_52WHighIndia_screenText}  ${e_invest_52WHighInida_screenText}
    Go Back