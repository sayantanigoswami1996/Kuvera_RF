*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Top Gainers Landing Page
    Log To Console  Top Gainers
    Wait For Element Visibility  ${KU_W_topGainerTitle} 
    Click Element  ${KU_W_topGainerTitle} 
    Wait For Element Visibility  ${KU_W_topGainerScreenTitle}  
    Verify Language Switch Login And Signup Link  
    Verify Search And Sort  ${KU_W_stocktopgainerindia_searchBar}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_stocktopgainerindia_searchTextField}  ${KU_W_invest_sort_topGainerAndIndia}
    Element Should be Visible  ${KU_W_topGainerScreenTitle}
    Verify Element And Text  ${KU_W_topGainerScreenTitle}  ${e_invest_topGainers_screenText}  
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__stocks_sortYearText}
    Verify Element And Text  ${KU_W_filterText_topGainerAndIndia}  ${e_invest_filterBtnText}
    # WatchList
    Verify Watchlist Icon  ${KU_W_invest_stocks_topGainerAndIndia_watchListBtn}
    Verify Login Page
    Verify Filter Navigation For Stocks TopGainer and 52 WkHighIndia  ${KU_W_invest_stocks_topGainerAndIndia_watchListHeader}  ${e_invest_stocks_watchlistHeader}   ${e_invest__52WHighLow_UTF_sortYearText}  ${KU_W_invest_stocks_topGainerAndIndia_watchListBtn}