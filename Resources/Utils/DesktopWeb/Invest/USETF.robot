*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify US ETF Landing Page
    Log To Console  US ETF
    Wait For Element Visibility  ${KU_W_UTFTitle}
    Click Element  ${KU_W_UTFTitle}
    Wait For Element Visibility  ${KU_W_UTF_screenTitle}  
    Verify Language Switch Login And Signup Link  
    Verify Search And Sort  ${KU_W_USStocksETF52WUS_searchBar}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_USStocksETFAnd52WUS_searchTextField}  ${KU_W_invest_sort_USStocks_UTF_USA}
    Verify Element And Text  ${KU_W_UTF_screenTitle}  ${e_invest_USETF_screenText} 
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__52WHighLow_UTF_sortYearText}
    Verify Element And Text  ${KU_W_filterText_UTFAnd52WkHighUS}  ${e_invest_filterBtnText}
    # WatchList
    Verify Watchlist Icon  ${KU_W_invest_USStocksUSETFAnd52WUS_watchlistBtn}
    Verify Login Page
    Verify Filter Navigation For USStocks USETF and 52WkHighUS  ${KU_W_invest_USStocksUSETFAnd52WUS_watchListHeader}  ${e_invest_USStocksUSETFAnd52WUS_watchlistHeader}  ${e_invest__52WHighLow_UTF_sortYearText}  ${KU_W_invest_USStocksUSETFAnd52WUS_watchlistBtn}