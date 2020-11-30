*** Settings ***

Library     SeleniumLibrary

*** Keywords ***
Verify High US Landing Page
    Wait For Element Visibility    ${KU_W_52WHighUSTitle}
    Click Element  ${KU_W_52WHighUSTitle}
    Wait For Element Visibility  ${KU_W_52WHighUS_screenText}  
    Element Should Be Visible  ${KU_W_52WHighUS_screenText} 
    # Verify Search And Sort  ${KU_W_searchBarForFunds}  ${e_invest_mf_searchBarText}   
    Verify Element And Text   ${KU_W_52WHighUS_screenText}    ${e_invest_52WHighUS_screenText}  
    Go Back