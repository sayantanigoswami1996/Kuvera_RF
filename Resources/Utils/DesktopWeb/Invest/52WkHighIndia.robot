*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin 52WkHigh India Landing Page 
    Log To Console  52 Wk High India
    Wait For Element Visibility  ${KU_W_52WHighIndiaTitle}  
    Click Element  ${KU_W_52WHighIndiaTitle} 
    Wait For Element Visibility  ${KU_W_52WHighIndia_screenText}
    Sleep  1s
    Element Should Be Visible  ${KU_W_52WHighIndia_screenText}
<<<<<<< HEAD
    Sleep  1s
=======
>>>>>>> 5561730a3c981c2ce902535a9250065e2241b3a7
    Verify Login And Signup Link  
    Wait For Element Visibility  ${KU_W_stockAnd52WIndia_searchBar}
    Verify Search And Sort  ${KU_W_stockAnd52WIndia_searchBar}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_stockAndindia_searchTextField}  ${KU_W_invest_sort_52WIndia}
    Verify Element And Text  ${KU_W_52WHighIndia_screenText}  ${e_invest_52WHighIndiaUS_screenText}
    Verify Element And Text  ${KU_W_filterText_52WIndia}  ${e_invest_filterBtnText}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__52WHighLow_UTF_sortYearText}
    # WatchList
    Verify Watchlist Icon  ${KU_W_invest_stocks_52WIndia_watchListBtn}  
    Verify Login Page
    Verify Filter Navigation For Stocks And 52 WkHighIndia  ${KU_W_invest_stocks_52WIndia_watchListHeader}  ${e_invest_stocks_watchlistHeader}  ${e_invest__52WHighLow_UTF_sortYearText}  ${KU_W_invest_stocks_52WIndia_watchListBtn}