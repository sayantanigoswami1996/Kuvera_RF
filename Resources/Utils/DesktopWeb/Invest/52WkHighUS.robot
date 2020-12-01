*** Settings ***

Library     SeleniumLibrary

*** Keywords ***
Verify High US Landing Page
    Wait For Element Visibility    ${KU_W_52WHighUSTitle}
    Click Element  ${KU_W_52WHighUSTitle}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_52WHighUS_screenText}
    Verify Language Switch Login And Signup Link  
    Element Should Be Visible  ${KU_W_52WHighUS_screenText} 
    Verify Search And Sort  ${KU_W_searchBarForUSETF}  ${e_invest_stock_searchBarTxt}  ${KU_W_sort_UTF_USA}   
    Verify Element And Text   ${KU_W_52WHighUS_screenText}    ${e_invest_52WHighUS_screenText}  
    Go Back