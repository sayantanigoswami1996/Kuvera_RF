*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify 52WkHigh India Landing Page 
    Log To Console  52 Wk High India
    Wait For Element Visibility  ${KU_W_52WHighIndiaTitle}  
    Click Element  ${KU_W_52WHighIndiaTitle} 
    Wait For Element Visibility  ${KU_W_52WHighIndia_screenText}
    Sleep  1s
    Element Should Be Visible  ${KU_W_52WHighIndia_screenText}
    Verify Language Switch Login And Signup Link  
    Wait For Element Visibility  ${KU_W_stocktopgainerindia_searchBar}
    Verify Search And Sort  ${KU_W_stocktopgainerindia_searchBar}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_stocktopgainerindia_searchTextField}  ${KU_W_invest_sort_topGainerAndIndia}
    Verify Element And Text  ${KU_W_52WHighIndia_screenText}  ${e_invest_52WHighIndiaUS_screenText}
    Verify Element And Text  ${KU_W_filterText_topGainerAndIndia}  ${e_invest_filterBtnText}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__52WHighLow_UTF_sortYearText}
    # WatchList
    Verify Watchlist Icon  ${KU_W_invest_stocks_topGainerAndIndia_watchListBtn}  
    Verify Login Page
    Verify Filter Navigation For Stocks TopGainer and 52 WkHighIndia  ${KU_W_invest_stocks_topGainerAndIndia_watchListHeader}  ${e_invest_stocks_watchlistHeader}  ${e_invest__52WHighLow_UTF_sortYearText}  ${KU_W_invest_stocks_topGainerAndIndia_watchListBtn}