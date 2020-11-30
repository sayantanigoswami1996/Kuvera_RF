*** Settings ***

Library     SeleniumLibrary

*** Keywords ***
Verify US ETF Landing Page
    Wait For Element Visibility    ${KU_W_UTFTitle}
    Click Element  ${KU_W_UTFTitle}
    Wait For Element Visibility   ${KU_W_UTF_screenTitle}  
    # Verify Search And Sort  ${KU_W_searchBarForUSETF}  ${e_invest_stock_searchBarTxt} 
    Verify Element And Text  ${KU_W_UTF_screenTitle}  ${e_invest_USETF_screenText} 
    Go Back