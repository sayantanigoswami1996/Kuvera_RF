*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify US ETF Landing Page
    Wait For Element Visibility  ${KU_W_UTFTitle}
    Click Element  ${KU_W_UTFTitle}
    Wait For Element Visibility  ${KU_W_UTF_screenTitle}  
    Verify Language Switch Login And Signup Link  
    Verify Search And Sort  ${KU_W_searchBarForUSETFAnd52WUS}  ${e_invest_stock_searchBarTxt}  ${KU_W_sort_UTF_USA} 
    Verify Element And Text  ${KU_W_UTF_screenTitle}  ${e_invest_USETF_screenText} 
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__52WHighLow_UTF_sortYearText}
    Wait For Element Visibility  ${KU_W_invest_USETFAnd52WUS_watchlistBtn}
    Verify Page Contains Element  ${KU_W_invest_USETFAnd52WUS_watchlistBtn}
    Click Element  ${KU_W_invest_USETFAnd52WUS_watchlistBtn}
    Verify Login Page
    Verify Filter Navigation For USETF and 52 Wk High US  ${KU_W_invest_USETFAnd52WUS_watchListHeading}  ${e_invest_USETFAnd52WUS_watchlistHeadingText}   ${e_invest__52WHighLow_UTF_sortYearText}  ${KU_W_invest_USETFAnd52WUS_watchlistBtn}