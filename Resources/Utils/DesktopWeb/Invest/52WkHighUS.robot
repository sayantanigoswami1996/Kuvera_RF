*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify 52WkHigh US Landing Page
    Log To Console  52 Wk High US
    Wait For Element Visibility  ${KU_W_52WHighUSTitle}
    Click Element  ${KU_W_52WHighUSTitle}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_52WHighUS_screenText}
    Verify Language Switch Login And Signup Link  
    Element Should Be Visible  ${KU_W_52WHighUS_screenText}
    Wait For Element Visibility  ${KU_W_US_SETF52WUS_searchBar}
    Verify Search And Sort  ${KU_W_US_SETF52WUS_searchBar}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_US_SETFAnd52WUS_searchTextField}  ${KU_W_invest_sort_US_S_UTF_USA} 
    Verify Element And Text  ${KU_W_52WHighUS_screenText}  ${e_invest_52WHighIndiaUS_screenText}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__52WHighLow_UTF_sortYearText} 
    Verify Element And Text  ${KU_W_filterText_UTFAnd52WkHighUS}  ${e_invest_filterBtnText}
    # WatchList
    Verify Watchlist Icon  ${KU_W_invest_US_SETFAnd52WUS_watchlistBtn} 
    Verify Login Page
    Verify Filter Navigation For USStocks USETF and 52WkHighUS  ${KU_W_invest_US_SETFAnd52WUS_watchListHeader}  ${e_invest_USStocksUSETFAnd52WUS_watchlistHeader}  ${e_invest__52WHighLow_UTF_sortYearText}  ${KU_W_invest_US_SETFAnd52WUS_watchlistBtn} 