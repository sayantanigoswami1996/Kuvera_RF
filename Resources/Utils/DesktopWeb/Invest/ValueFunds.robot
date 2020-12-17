*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Value Funds Landing Page
    Log To Console  Value Funds
    Wait For Element Visibility  ${KU_W_valueFundsTitle} 
    Click Element  ${KU_W_valueFundsTitle} 
    Wait For Element Visibility  ${KU_W_invest_fundsScreenTitle} 
    Verify Language Switch Login And Signup Link  
    Verify Search And Sort  ${KU_W_searchBarForFunds}  ${e_invest_searchBarText}  ${KU_W_invest_searchTextFieldForFunds}  ${KU_W_invest_sort}
    Verify Element And Text  ${KU_W_invest_fundsScreenTitle}  ${e_invest_valueFunds_screenText} 
    Verify Filter And Clear All
    Verify Element And Text  ${KU_W_invest_fundsScreenTitle}  ${e_invest_valueFunds_screenText} 
    Verify Element And Text  ${KU_W_invest_filteredFund}  ${e_invest_valueFunds_filteredFundText} 
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__funds_sortYearText}
    Verify Watchlist Icon  ${KU_W_invest_watchListBtn}
    Wait For Element Visibility  ${KU_W_invest_watchlistHeader}
    # WatchList
    Verify Element And Text  ${KU_W_invest_watchlistHeader}  ${e_invest_watchlistHeader}
    Verify Filter Navigation For Funds
    Go Back