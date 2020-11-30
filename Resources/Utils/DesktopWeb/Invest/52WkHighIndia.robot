*** Settings ***

Library     SeleniumLibrary

*** Keywords ***
Verify High India Landing Page
    Wait For Element Visibility    ${KU_W_52WHighIndiaTitle}  
    Click Element  ${KU_W_52WHighIndiaTitle} 
    Wait For Element Visibility  ${KU_W_52WHighIndia_screenText}
    Sleep  2s
    Element Should Be Visible   ${KU_W_52WHighIndia_screenText}
    # Verify Search And Sort  ${KU_W_searchBarForFunds}  ${e_invest_mf_searchBarText}   
    Verify Element And Text   ${KU_W_52WHighIndia_screenText}  ${e_invest_52WHighInida_screenText}
    Go Back