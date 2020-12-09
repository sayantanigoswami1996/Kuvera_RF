*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Top Gainers Landing Page
    Click Element  ${KU_W_investLink}
    Wait For Element Visibility    ${KU_W_topGainerTitle} 
    Click Element  ${KU_W_topGainerTitle} 
    Wait For Element Visibility  ${KU_W_topGainerScreenTitle}  
    Verify Language Switch Login And Signup Link  
    Verify Search And Sort  ${KU_W_searchBarForTopGainer}  ${e_invest_stock_searchBarTxt}  ${KU_W_sort_topGainer_India}
    Element Should be Visible  ${KU_W_topGainerScreenTitle}
    Verify Element And Text   ${KU_W_topGainerScreenTitle}  ${e_invest_topGainers_screenText}  
    Verify Element And Text   ${KU_W_invest_sortYear}   ${e_invest__stocks_sortYearText}
    Wait For Element Visibility   ${KU_W_invest_topGainer_India_watchListBtn}
    Verify Page Contains Element  ${KU_W_invest_topGainer_India_watchListBtn}
    Click Element  ${KU_W_invest_topGainer_India_watchListBtn}
    Verify Login Page
    Verify Filter Navigation For Stocks   ${KU_W_invest_topGainer_India_watchListHeading}  ${e_invest_stocks_watchlistHeadingText}   ${e_invest__52WHighLowSortYearText}  ${KU_W_invest_topGainer_India_watchListBtn}
    Go Back