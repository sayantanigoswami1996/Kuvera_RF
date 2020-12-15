*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Top Gainers Landing Page
    Wait For Element Visibility  ${KU_W_topGainerTitle} 
    Click Element  ${KU_W_topGainerTitle} 
    Wait For Element Visibility  ${KU_W_topGainerScreenTitle}  
    Verify Language Switch Login And Signup Link  
    Verify Search And Sort  ${KU_W_searchBarForTopGainerAnd52WIndia}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_searchTextFieldForTopGainerAndIndia}  ${KU_W_invest_sort_topGainerAndIndia}
    Element Should be Visible  ${KU_W_topGainerScreenTitle}
    Verify Element And Text  ${KU_W_topGainerScreenTitle}  ${e_invest_topGainers_screenText}  
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__stocks_sortYearText}
    Verify Element And Text   ${KU_W_filterText_topGainerAndIndia}  ${e_invest_filterBtnText}
    Verify Watchlist Icon  ${KU_W_invest_topGainerAndIndia_watchListBtn}
    Verify Login Page
    Verify Filter Navigation For TopGainer and 52WkHighIndia  ${KU_W_invest_topGainerAndIndia_watchListHeading}  ${e_invest_stocks_watchlistHeadingText}   ${e_invest__52WHighLow_UTF_sortYearText}  ${KU_W_invest_topGainerAndIndia_watchListBtn}