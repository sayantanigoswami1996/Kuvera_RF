*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Equity Index Landing Page
    Log To Console  Equity Index
    Wait For Element Visibility    ${KU_W_equityIndexTitle} 
    Sleep  1s
    Click Element  ${KU_W_equityIndexTitle} 
    Wait For Element Visibility  ${KU_W_invest_fundsScreenTitle}
    Verify Login And Signup Link  
    Verify Search And Sort  ${KU_W_searchBarForFunds}  ${e_invest_searchBarText}  ${KU_W_invest_searchTextFieldForFunds}  ${KU_W_invest_sort}
    Verify Element And Text   ${KU_W_invest_fundsScreenTitle}  ${e_invest_equIndex_screenText} 
    Verify Filter And Clear All
    Verify Element And Text  ${KU_W_invest_sortYear}   ${e_invest__funds_sortYearText}
    Verify Element And Text  ${KU_W_invest_filteredFund}  ${e_invest_equIndex_filteredFundText}
    Verify Watchlist Icon  ${KU_W_invest_watchListBtn}
    # Watchlist
    Verify Element And Text  ${KU_W_invest_watchlistHeader}   ${e_invest_watchlistHeader}
    Verify Filter Navigation For Funds
    Go Back
