*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify US ETF Landing Page
    Log To Console  USETF
    Wait For Element Visibility  ${KU_W_UTFTitle}
    Click Element  ${KU_W_UTFTitle}
    Wait For Element Visibility  ${KU_W_UTF_screenTitle}  
    Verify Language Switch Login And Signup Link  
    Verify Search And Sort  ${KU_W_searchBarForUSETFAnd52WUS}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_searchTextFieldForETFAndUS}  ${KU_W_invest_sort_UTF_USA}
    Verify Element And Text  ${KU_W_UTF_screenTitle}  ${e_invest_USETF_screenText} 
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__52WHighLow_UTF_sortYearText}
    Verify Element And Text  ${KU_W_filterText_UTFAnd52WkHighUS}  ${e_invest_filterBtnText}
    # WatchList
    Verify Watchlist Icon  ${KU_W_invest_USETFAnd52WUS_watchlistBtn}
    Verify Login Page
    Verify Filter Navigation For USETF and 52WkHighUS  ${KU_W_invest_USETFAnd52WUS_watchListHeader}  ${e_invest_USETFAnd52WUS_watchlistHeader}  ${e_invest__52WHighLow_UTF_sortYearText}  ${KU_W_invest_USETFAnd52WUS_watchlistBtn}
